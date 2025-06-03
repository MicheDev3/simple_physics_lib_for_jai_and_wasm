LAYER_NON_MOVING :JPH_ObjectLayer: 0;
LAYER_MOVING :JPH_ObjectLayer: 1;
LAYER_NUM_LAYERS :JPH_ObjectLayer: 2;

BroadPhaseLayers_NON_MOVING :JPH_BroadPhaseLayer: 0;
BroadPhaseLayers_MOVING :JPH_BroadPhaseLayer: 1;
BroadPhaseLayers_NUM_LAYERS :u32: 2;



main :: () {
	print("---------------------\n");
	print("jolt test START\n");

	initResult := JPH_Init();
	print("initResult=%\n", initResult);
	if initResult==false {
		print("failed to init jolt\n");
		return;
	}
	JPH_SetTraceHandler(jolt_log_callback);
	print("jolt init DONE\n");

	jobSystem :*JPH_JobSystem= JPH_JobSystemThreadPool_Create(null);

	// We use only 2 layers: one for non-moving objects and one for moving objects
	objectLayerPairFilterTable :*JPH_ObjectLayerPairFilter= JPH_ObjectLayerPairFilterTable_Create(2);
	JPH_ObjectLayerPairFilterTable_EnableCollision(objectLayerPairFilterTable, LAYER_NON_MOVING, LAYER_MOVING);
	JPH_ObjectLayerPairFilterTable_EnableCollision(objectLayerPairFilterTable, LAYER_MOVING, LAYER_NON_MOVING);

	// We use a 1-to-1 mapping between object layers and broadphase layers
	broadPhaseLayerInterfaceTable :*JPH_BroadPhaseLayerInterface= JPH_BroadPhaseLayerInterfaceTable_Create(2, 2);
	JPH_BroadPhaseLayerInterfaceTable_MapObjectToBroadPhaseLayer(broadPhaseLayerInterfaceTable, LAYER_NON_MOVING, BroadPhaseLayers_NON_MOVING);
	JPH_BroadPhaseLayerInterfaceTable_MapObjectToBroadPhaseLayer(broadPhaseLayerInterfaceTable, LAYER_MOVING, BroadPhaseLayers_MOVING);

	objectVsBroadPhaseLayerFilter :*JPH_ObjectVsBroadPhaseLayerFilter= JPH_ObjectVsBroadPhaseLayerFilterTable_Create(broadPhaseLayerInterfaceTable, 2, objectLayerPairFilterTable, 2);

	settings :JPH_PhysicsSystemSettings= .{
		maxBodies = 65536,
		numBodyMutexes = 0,
		maxBodyPairs = 65536,
		maxContactConstraints = 65536,
		broadPhaseLayerInterface = broadPhaseLayerInterfaceTable,
		objectLayerPairFilter = objectLayerPairFilterTable,
		objectVsBroadPhaseLayerFilter = objectVsBroadPhaseLayerFilter
	};
	system :*JPH_PhysicsSystem= JPH_PhysicsSystem_Create(*settings);
	bodyInterface :*JPH_BodyInterface= JPH_PhysicsSystem_GetBodyInterface(system);

	floorId :JPH_BodyID=---;
	{
		// Next we can create a rigid body to serve as the floor, we make a large box
		// Create the settings for the collision volume (the shape). 
		// Note that for simple shapes (like boxes) you can also directly construct a BoxShape.
		boxHalfExtents :JPH_Vec3= .{ 100.0, 1.0, 100.0 };
		floorShape :*JPH_BoxShape= JPH_BoxShape_Create(*boxHalfExtents, JPH_DEFAULT_CONVEX_RADIUS);

		floorPosition :JPH_Vec3= .{ 0.0, -1.0, 0.0 };
		floorSettings :*JPH_BodyCreationSettings= JPH_BodyCreationSettings_Create3(
			cast(*JPH_Shape)floorShape,
			*floorPosition,
			null, // Identity, 
			.JPH_MotionType_Static,
			LAYER_NON_MOVING
		);

		// Create the actual rigid body
		floorId = JPH_BodyInterface_CreateAndAddBody(bodyInterface, floorSettings, .JPH_Activation_DontActivate);
		JPH_BodyCreationSettings_Destroy(floorSettings);
	}
	// Sphere
	sphereId :JPH_BodyID= ---;
	{
		sphereShape :*JPH_SphereShape= JPH_SphereShape_Create(50.0);
		spherePosition :JPH_Vec3= .{ 0.0, 2.0, 0.0 };
		sphereSettings :*JPH_BodyCreationSettings= JPH_BodyCreationSettings_Create3(
			cast(*JPH_Shape)sphereShape,
			*spherePosition,
			null, // Identity, 
			.JPH_MotionType_Dynamic,
			LAYER_MOVING);

		sphereId = JPH_BodyInterface_CreateAndAddBody(bodyInterface, sphereSettings, .JPH_Activation_Activate);
		JPH_BodyCreationSettings_Destroy(sphereSettings);
	}

	// Now you can interact with the dynamic body, in this case we're going to give it a velocity.
	// (note that if we had used CreateBody then we could have set the velocity straight on the body before adding it to the physics system)
	sphereLinearVelocity :JPH_Vec3= .{ 0.0, -5.0, 0.0 };
	JPH_BodyInterface_SetLinearVelocity(bodyInterface, sphereId, *sphereLinearVelocity);

	{
		cCharacterHeightStanding := 1.35;
		cCharacterRadiusStanding := 0.3;
		cCharacterHeightCrouching := 0.8;
		cCharacterRadiusCrouching := 0.3;
		cInnerShapeFraction := 0.9;

		capsuleShape :*JPH_CapsuleShape= JPH_CapsuleShape_Create(0.5 * cCharacterHeightStanding, cCharacterRadiusStanding);
		position :JPH_Vec3= .{ 0, 0.5 * cCharacterHeightStanding + cCharacterRadiusStanding, 0 };
		mStandingShape := JPH_RotatedTranslatedShape_Create(*position, null, cast(*JPH_Shape)capsuleShape);

		characterSettings :JPH_CharacterVirtualSettings=.{};
		JPH_CharacterVirtualSettings_Init(*characterSettings);
		characterSettings.base.shape = cast(*JPH_Shape)mStandingShape;
		characterSettings.base.supportingVolume = .{ .{0, 1, 0}, -cCharacterRadiusStanding }; // Accept contacts that touch the lower sphere of the capsule
		characterVirtualPosition :JPH_RVec3= .{ -5.0, 0, 3.0 };

		mAnimatedCharacterVirtual := JPH_CharacterVirtual_Create(*characterSettings, *characterVirtualPosition, null, 0, system);
	}

	jointSettings:JPH_SixDOFConstraintSettings=---;
	JPH_SixDOFConstraintSettings_Init(*jointSettings);

	// We simulate the physics world in discrete time steps. 60 Hz is a good rate to update the physics system.
	cDeltaTime := 1.0 / 60.0;

	// Optional step: Before starting the physics simulation you can optimize the broad phase. This improves collision detection performance (it's pointless here because we only have 2 bodies).
	// You should definitely not call this every frame or when e.g. streaming in a new level section as it is an expensive operation.
	// Instead insert all new objects in batches instead of 1 at a time to keep the broad phase efficient.
	JPH_PhysicsSystem_OptimizeBroadPhase(system);

	// Now we're ready to simulate the body, keep simulating until it goes to sleep
	step :u32= 0;
	while (JPH_BodyInterface_IsActive(bodyInterface, sphereId))
	{
		// Next step
		step+=1;

		// Output current position and velocity of the sphere
		position:JPH_RVec3=---;
		velocity:JPH_Vec3=---;

		JPH_BodyInterface_GetCenterOfMassPosition(bodyInterface, sphereId, *position);
		JPH_BodyInterface_GetLinearVelocity(bodyInterface, sphereId, *velocity);
		// std::cout << "Step " << step << ": Position = (" << position.x << ", " << position.y << ", " << position.z << "), Velocity = (" << velocity.x << ", " << velocity.y << ", " << velocity.z << ")" << std::endl;
		print("Step:%: Position=%, Velocity=%\n", step, position, velocity);

		// If you take larger steps than 1 / 60th of a second you need to do multiple collision steps in order to keep the simulation stable. Do 1 collision step per 1 / 60th of a second (round up).
		cCollisionSteps :s32= 1;

		// Step the world
		JPH_PhysicsSystem_Update(system, cDeltaTime, cCollisionSteps, jobSystem);
	}

	// Remove the destroy sphere from the physics system. Note that the sphere itself keeps all of its state and can be re-added at any time.
	JPH_BodyInterface_RemoveAndDestroyBody(bodyInterface, sphereId);

	// Remove and destroy the floor
	JPH_BodyInterface_RemoveAndDestroyBody(bodyInterface, floorId);

	JPH_JobSystem_Destroy(jobSystem);

	JPH_PhysicsSystem_Destroy(system);
	JPH_Shutdown();

	print("jolt test DONE\n");
}

#import "Basic";
#import "Math";
#import "jolt";

#scope_file

jolt_log_callback :JPH_TraceFunc: (msg: *u8) #c_call {
	new_context: #Context;
	push_context new_context {
		print("\n");
		print("ERROR JOLT START\n");
	}
	// #if USE_WGPU {
		print_c("[JOLT]: %\n", to_string(msg));
	// }
	push_context new_context {
		print("ERROR JOLT END\n");
		print("\n");
	}
}

print_c :: (format: string, args: ..Any, to_standard_error := false) #expand {
	new_context: #Context;
	push_context new_context {
		print(format, ..args, to_standard_error);
	}
} @PrintLike