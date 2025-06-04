//
// This file was auto-generated using the following command:
//
// jai generate.jai
//



JOLT_C_H_ :: 1;

JPH_DEFAULT_COLLISION_TOLERANCE :: 1.0e-4;
JPH_DEFAULT_PENETRATION_TOLERANCE :: 1.0e-4;
JPH_DEFAULT_CONVEX_RADIUS :: 0.05;
JPH_CAPSULE_PROJECTION_SLOP :: 0.02;
JPH_MAX_PHYSICS_JOBS :: 2048;
JPH_MAX_PHYSICS_BARRIERS :: 8;
JPH_INVALID_COLLISION_GROUP_ID :: ~0;
JPH_INVALID_COLLISION_SUBGROUP_ID :: ~0;

JPH_BodyID :: u32;
JPH_SubShapeID :: u32;
JPH_ObjectLayer :: u32;
JPH_BroadPhaseLayer :: u8;
JPH_CollisionGroupID :: u32;
JPH_CollisionSubGroupID :: u32;
JPH_CharacterID :: u32;

JPH_BroadPhaseLayerInterface :: struct {}
JPH_ObjectVsBroadPhaseLayerFilter :: struct {}
JPH_ObjectLayerPairFilter :: struct {}

JPH_BroadPhaseLayerFilter :: struct {}
JPH_ObjectLayerFilter :: struct {}
JPH_BodyFilter :: struct {}
JPH_ShapeFilter :: struct {}

JPH_SimShapeFilter :: struct {}

JPH_PhysicsSystem :: struct {}

JPH_PhysicsMaterial :: struct {}

JPH_ShapeSettings :: struct {}
JPH_ConvexShapeSettings :: struct {}
JPH_SphereShapeSettings :: struct {}
JPH_BoxShapeSettings :: struct {}
JPH_PlaneShapeSettings :: struct {}
JPH_TriangleShapeSettings :: struct {}
JPH_CapsuleShapeSettings :: struct {}
JPH_TaperedCapsuleShapeSettings :: struct {}
JPH_CylinderShapeSettings :: struct {}
JPH_TaperedCylinderShapeSettings :: struct {}
JPH_ConvexHullShapeSettings :: struct {}
JPH_CompoundShapeSettings :: struct {}
JPH_StaticCompoundShapeSettings :: struct {}
JPH_MutableCompoundShapeSettings :: struct {}
JPH_MeshShapeSettings :: struct {}
JPH_HeightFieldShapeSettings :: struct {}
JPH_RotatedTranslatedShapeSettings :: struct {}
JPH_ScaledShapeSettings :: struct {}
JPH_OffsetCenterOfMassShapeSettings :: struct {}
JPH_EmptyShapeSettings :: struct {}

JPH_Shape :: struct {}
JPH_ConvexShape :: struct {}
JPH_SphereShape :: struct {}
JPH_BoxShape :: struct {}
JPH_PlaneShape :: struct {}
JPH_CapsuleShape :: struct {}
JPH_CylinderShape :: struct {}
JPH_TaperedCylinderShape :: struct {}
JPH_TriangleShape :: struct {}
JPH_TaperedCapsuleShape :: struct {}
JPH_ConvexHullShape :: struct {}
JPH_CompoundShape :: struct {}
JPH_StaticCompoundShape :: struct {}
JPH_MutableCompoundShape :: struct {}
JPH_MeshShape :: struct {}
JPH_HeightFieldShape :: struct {}
JPH_DecoratedShape :: struct {}
JPH_RotatedTranslatedShape :: struct {}
JPH_ScaledShape :: struct {}
JPH_OffsetCenterOfMassShape :: struct {}
JPH_EmptyShape :: struct {}

JPH_BodyCreationSettings :: struct {}
JPH_SoftBodyCreationSettings :: struct {}
JPH_BodyInterface :: struct {}
JPH_BodyLockInterface :: struct {}
JPH_BroadPhaseQuery :: struct {}
JPH_NarrowPhaseQuery :: struct {}
JPH_MotionProperties :: struct {}

JPH_Body :: struct {}

JPH_ContactListener :: struct {}
JPH_ContactManifold :: struct {}
JPH_ContactSettings :: struct {}

JPH_GroupFilter :: struct {}
JPH_GroupFilterTable :: struct {}

/* Enums */
JPH_PhysicsUpdateError :: enum s32 {
    None                           :: 0;
    ManifoldCacheFull              :: 1;
    BodyPairCacheFull              :: 2;
    ContactConstraintsFull         :: 4;

    JPH_PhysicsUpdateError_Count   :: 5;
    JPH_PhysicsUpdateError_Force32 :: 2147483647;

    JPH_PhysicsUpdateError_None                   :: None;
    JPH_PhysicsUpdateError_ManifoldCacheFull      :: ManifoldCacheFull;
    JPH_PhysicsUpdateError_BodyPairCacheFull      :: BodyPairCacheFull;
    JPH_PhysicsUpdateError_ContactConstraintsFull :: ContactConstraintsFull;

    _JPH_PhysicsUpdateError_Count                 :: JPH_PhysicsUpdateError_Count;
    _JPH_PhysicsUpdateError_Force32               :: JPH_PhysicsUpdateError_Force32;
}

JPH_BodyType :: enum s32 {
    Rigid                :: 0;
    Soft                 :: 1;

    JPH_BodyType_Count   :: 2;
    JPH_BodyType_Force32 :: 2147483647;

    JPH_BodyType_Rigid    :: Rigid;
    JPH_BodyType_Soft     :: Soft;

    _JPH_BodyType_Count   :: JPH_BodyType_Count;
    _JPH_BodyType_Force32 :: JPH_BodyType_Force32;
}

JPH_MotionType :: enum s32 {
    Static                 :: 0;
    Kinematic              :: 1;
    Dynamic                :: 2;

    JPH_MotionType_Count   :: 3;
    JPH_MotionType_Force32 :: 2147483647;

    JPH_MotionType_Static    :: Static;
    JPH_MotionType_Kinematic :: Kinematic;
    JPH_MotionType_Dynamic   :: Dynamic;

    _JPH_MotionType_Count    :: JPH_MotionType_Count;
    _JPH_MotionType_Force32  :: JPH_MotionType_Force32;
}

JPH_Activation :: enum s32 {
    Activate               :: 0;
    DontActivate           :: 1;

    JPH_Activation_Count   :: 2;
    JPH_Activation_Force32 :: 2147483647;

    JPH_Activation_Activate     :: Activate;
    JPH_Activation_DontActivate :: DontActivate;

    _JPH_Activation_Count       :: JPH_Activation_Count;
    _JPH_Activation_Force32     :: JPH_Activation_Force32;
}

JPH_ValidateResult :: enum s32 {
    AcceptAllContactsForThisBodyPair :: 0;
    AcceptContact                    :: 1;
    RejectContact                    :: 2;
    RejectAllContactsForThisBodyPair :: 3;

    JPH_ValidateResult_Count         :: 4;
    JPH_ValidateResult_Force32       :: 2147483647;

    JPH_ValidateResult_AcceptAllContactsForThisBodyPair :: AcceptAllContactsForThisBodyPair;
    JPH_ValidateResult_AcceptContact                    :: AcceptContact;
    JPH_ValidateResult_RejectContact                    :: RejectContact;
    JPH_ValidateResult_RejectAllContactsForThisBodyPair :: RejectAllContactsForThisBodyPair;

    _JPH_ValidateResult_Count                           :: JPH_ValidateResult_Count;
    _JPH_ValidateResult_Force32                         :: JPH_ValidateResult_Force32;
}

JPH_ShapeType :: enum s32 {
    Convex                :: 0;
    Compound              :: 1;
    Decorated             :: 2;
    Mesh                  :: 3;
    HeightField           :: 4;
    SoftBody              :: 5;

    User1                 :: 6;
    User2                 :: 7;
    User3                 :: 8;
    User4                 :: 9;

    JPH_ShapeType_Count   :: 10;
    JPH_ShapeType_Force32 :: 2147483647;

    JPH_ShapeType_Convex      :: Convex;
    JPH_ShapeType_Compound    :: Compound;
    JPH_ShapeType_Decorated   :: Decorated;
    JPH_ShapeType_Mesh        :: Mesh;
    JPH_ShapeType_HeightField :: HeightField;
    JPH_ShapeType_SoftBody    :: SoftBody;

    JPH_ShapeType_User1       :: User1;
    JPH_ShapeType_User2       :: User2;
    JPH_ShapeType_User3       :: User3;
    JPH_ShapeType_User4       :: User4;

    _JPH_ShapeType_Count      :: JPH_ShapeType_Count;
    _JPH_ShapeType_Force32    :: JPH_ShapeType_Force32;
}

JPH_ShapeSubType :: enum s32 {
    Sphere                   :: 0;
    Box                      :: 1;
    Triangle                 :: 2;
    Capsule                  :: 3;
    TaperedCapsule           :: 4;
    Cylinder                 :: 5;
    ConvexHull               :: 6;
    StaticCompound           :: 7;
    MutableCompound          :: 8;
    RotatedTranslated        :: 9;
    Scaled                   :: 10;
    OffsetCenterOfMass       :: 11;
    Mesh                     :: 12;
    HeightField              :: 13;
    SoftBody                 :: 14;

    JPH_ShapeSubType_Count   :: 15;
    JPH_ShapeSubType_Force32 :: 2147483647;

    JPH_ShapeSubType_Sphere             :: Sphere;
    JPH_ShapeSubType_Box                :: Box;
    JPH_ShapeSubType_Triangle           :: Triangle;
    JPH_ShapeSubType_Capsule            :: Capsule;
    JPH_ShapeSubType_TaperedCapsule     :: TaperedCapsule;
    JPH_ShapeSubType_Cylinder           :: Cylinder;
    JPH_ShapeSubType_ConvexHull         :: ConvexHull;
    JPH_ShapeSubType_StaticCompound     :: StaticCompound;
    JPH_ShapeSubType_MutableCompound    :: MutableCompound;
    JPH_ShapeSubType_RotatedTranslated  :: RotatedTranslated;
    JPH_ShapeSubType_Scaled             :: Scaled;
    JPH_ShapeSubType_OffsetCenterOfMass :: OffsetCenterOfMass;
    JPH_ShapeSubType_Mesh               :: Mesh;
    JPH_ShapeSubType_HeightField        :: HeightField;
    JPH_ShapeSubType_SoftBody           :: SoftBody;

    _JPH_ShapeSubType_Count             :: JPH_ShapeSubType_Count;
    _JPH_ShapeSubType_Force32           :: JPH_ShapeSubType_Force32;
}

JPH_ConstraintType :: enum s32 {
    Constraint                 :: 0;
    TwoBodyConstraint          :: 1;

    JPH_ConstraintType_Count   :: 2;
    JPH_ConstraintType_Force32 :: 2147483647;

    JPH_ConstraintType_Constraint        :: Constraint;
    JPH_ConstraintType_TwoBodyConstraint :: TwoBodyConstraint;

    _JPH_ConstraintType_Count            :: JPH_ConstraintType_Count;
    _JPH_ConstraintType_Force32          :: JPH_ConstraintType_Force32;
}

JPH_ConstraintSubType :: enum s32 {
    Fixed                         :: 0;
    Point                         :: 1;
    Hinge                         :: 2;
    Slider                        :: 3;
    Distance                      :: 4;
    Cone                          :: 5;
    SwingTwist                    :: 6;
    SixDOF                        :: 7;
    Path                          :: 8;
    Vehicle                       :: 9;
    RackAndPinion                 :: 10;
    Gear                          :: 11;
    Pulley                        :: 12;

    User1                         :: 13;
    User2                         :: 14;
    User3                         :: 15;
    User4                         :: 16;

    JPH_ConstraintSubType_Count   :: 17;
    JPH_ConstraintSubType_Force32 :: 2147483647;

    JPH_ConstraintSubType_Fixed         :: Fixed;
    JPH_ConstraintSubType_Point         :: Point;
    JPH_ConstraintSubType_Hinge         :: Hinge;
    JPH_ConstraintSubType_Slider        :: Slider;
    JPH_ConstraintSubType_Distance      :: Distance;
    JPH_ConstraintSubType_Cone          :: Cone;
    JPH_ConstraintSubType_SwingTwist    :: SwingTwist;
    JPH_ConstraintSubType_SixDOF        :: SixDOF;
    JPH_ConstraintSubType_Path          :: Path;
    JPH_ConstraintSubType_Vehicle       :: Vehicle;
    JPH_ConstraintSubType_RackAndPinion :: RackAndPinion;
    JPH_ConstraintSubType_Gear          :: Gear;
    JPH_ConstraintSubType_Pulley        :: Pulley;

    JPH_ConstraintSubType_User1         :: User1;
    JPH_ConstraintSubType_User2         :: User2;
    JPH_ConstraintSubType_User3         :: User3;
    JPH_ConstraintSubType_User4         :: User4;

    _JPH_ConstraintSubType_Count        :: JPH_ConstraintSubType_Count;
    _JPH_ConstraintSubType_Force32      :: JPH_ConstraintSubType_Force32;
}

JPH_ConstraintSpace :: enum s32 {
    LocalToBodyCOM              :: 0;
    WorldSpace                  :: 1;

    JPH_ConstraintSpace_Count   :: 2;
    JPH_ConstraintSpace_Force32 :: 2147483647;

    JPH_ConstraintSpace_LocalToBodyCOM :: LocalToBodyCOM;
    JPH_ConstraintSpace_WorldSpace     :: WorldSpace;

    _JPH_ConstraintSpace_Count         :: JPH_ConstraintSpace_Count;
    _JPH_ConstraintSpace_Force32       :: JPH_ConstraintSpace_Force32;
}

JPH_MotionQuality :: enum s32 {
    Discrete                  :: 0;
    LinearCast                :: 1;

    JPH_MotionQuality_Count   :: 2;
    JPH_MotionQuality_Force32 :: 2147483647;

    JPH_MotionQuality_Discrete   :: Discrete;
    JPH_MotionQuality_LinearCast :: LinearCast;

    _JPH_MotionQuality_Count     :: JPH_MotionQuality_Count;
    _JPH_MotionQuality_Force32   :: JPH_MotionQuality_Force32;
}

JPH_OverrideMassProperties :: enum s32 {
    CalculateMassAndInertia                :: 0;
    CalculateInertia                       :: 1;
    MassAndInertiaProvided                 :: 2;

    JPH_JPH_OverrideMassProperties_Count   :: 3;
    JPH_JPH_OverrideMassProperties_Force32 :: 2147483647;

    JPH_OverrideMassProperties_CalculateMassAndInertia :: CalculateMassAndInertia;
    JPH_OverrideMassProperties_CalculateInertia        :: CalculateInertia;
    JPH_OverrideMassProperties_MassAndInertiaProvided  :: MassAndInertiaProvided;

    _JPH_JPH_OverrideMassProperties_Count              :: JPH_JPH_OverrideMassProperties_Count;
    _JPH_JPH_OverrideMassProperties_Force32            :: JPH_JPH_OverrideMassProperties_Force32;
}

JPH_AllowedDOFs :: enum s32 {
    All                     :: 63;
    TranslationX            :: 1;
    TranslationY            :: 2;
    TranslationZ            :: 4;
    RotationX               :: 8;
    RotationY               :: 16;
    RotationZ               :: 32;
    Plane2D                 :: 35;

    JPH_AllowedDOFs_Count   :: 36;
    JPH_AllowedDOFs_Force32 :: 2147483647;

    JPH_AllowedDOFs_All          :: All;
    JPH_AllowedDOFs_TranslationX :: TranslationX;
    JPH_AllowedDOFs_TranslationY :: TranslationY;
    JPH_AllowedDOFs_TranslationZ :: TranslationZ;
    JPH_AllowedDOFs_RotationX    :: RotationX;
    JPH_AllowedDOFs_RotationY    :: RotationY;
    JPH_AllowedDOFs_RotationZ    :: RotationZ;
    JPH_AllowedDOFs_Plane2D      :: Plane2D;

    _JPH_AllowedDOFs_Count       :: JPH_AllowedDOFs_Count;
    _JPH_AllowedDOFs_Force32     :: JPH_AllowedDOFs_Force32;
}

JPH_GroundState :: enum s32 {
    OnGround                :: 0;
    OnSteepGround           :: 1;
    NotSupported            :: 2;
    InAir                   :: 3;

    JPH_GroundState_Count   :: 4;
    JPH_GroundState_Force32 :: 2147483647;

    JPH_GroundState_OnGround      :: OnGround;
    JPH_GroundState_OnSteepGround :: OnSteepGround;
    JPH_GroundState_NotSupported  :: NotSupported;
    JPH_GroundState_InAir         :: InAir;

    _JPH_GroundState_Count        :: JPH_GroundState_Count;
    _JPH_GroundState_Force32      :: JPH_GroundState_Force32;
}

JPH_BackFaceMode :: enum s32 {
    IgnoreBackFaces          :: 0;
    CollideWithBackFaces     :: 1;

    JPH_BackFaceMode_Count   :: 2;
    JPH_BackFaceMode_Force32 :: 2147483647;

    JPH_BackFaceMode_IgnoreBackFaces      :: IgnoreBackFaces;
    JPH_BackFaceMode_CollideWithBackFaces :: CollideWithBackFaces;

    _JPH_BackFaceMode_Count               :: JPH_BackFaceMode_Count;
    _JPH_BackFaceMode_Force32             :: JPH_BackFaceMode_Force32;
}

JPH_ActiveEdgeMode :: enum s32 {
    CollideOnlyWithActive      :: 0;
    CollideWithAll             :: 1;

    JPH_ActiveEdgeMode_Count   :: 2;
    JPH_ActiveEdgeMode_Force32 :: 2147483647;

    JPH_ActiveEdgeMode_CollideOnlyWithActive :: CollideOnlyWithActive;
    JPH_ActiveEdgeMode_CollideWithAll        :: CollideWithAll;

    _JPH_ActiveEdgeMode_Count                :: JPH_ActiveEdgeMode_Count;
    _JPH_ActiveEdgeMode_Force32              :: JPH_ActiveEdgeMode_Force32;
}

JPH_CollectFacesMode :: enum s32 {
    CollectFaces                 :: 0;
    NoFaces                      :: 1;

    JPH_CollectFacesMode_Count   :: 2;
    JPH_CollectFacesMode_Force32 :: 2147483647;

    JPH_CollectFacesMode_CollectFaces :: CollectFaces;
    JPH_CollectFacesMode_NoFaces      :: NoFaces;

    _JPH_CollectFacesMode_Count       :: JPH_CollectFacesMode_Count;
    _JPH_CollectFacesMode_Force32     :: JPH_CollectFacesMode_Force32;
}

JPH_MotorState :: enum s32 {
    Off                    :: 0;
    Velocity               :: 1;
    Position               :: 2;

    JPH_MotorState_Count   :: 3;
    JPH_MotorState_Force32 :: 2147483647;

    JPH_MotorState_Off      :: Off;
    JPH_MotorState_Velocity :: Velocity;
    JPH_MotorState_Position :: Position;

    _JPH_MotorState_Count   :: JPH_MotorState_Count;
    _JPH_MotorState_Force32 :: JPH_MotorState_Force32;
}

JPH_CollisionCollectorType :: enum s32 {
    AllHit                             :: 0;
    AllHitSorted                       :: 1;
    ClosestHit                         :: 2;
    AnyHit                             :: 3;

    JPH_CollisionCollectorType_Count   :: 4;
    JPH_CollisionCollectorType_Force32 :: 2147483647;

    JPH_CollisionCollectorType_AllHit       :: AllHit;
    JPH_CollisionCollectorType_AllHitSorted :: AllHitSorted;
    JPH_CollisionCollectorType_ClosestHit   :: ClosestHit;
    JPH_CollisionCollectorType_AnyHit       :: AnyHit;

    _JPH_CollisionCollectorType_Count       :: JPH_CollisionCollectorType_Count;
    _JPH_CollisionCollectorType_Force32     :: JPH_CollisionCollectorType_Force32;
}

JPH_SwingType :: enum s32 {
    Cone                  :: 0;
    Pyramid               :: 1;

    JPH_SwingType_Count   :: 2;
    JPH_SwingType_Force32 :: 2147483647;

    JPH_SwingType_Cone     :: Cone;
    JPH_SwingType_Pyramid  :: Pyramid;

    _JPH_SwingType_Count   :: JPH_SwingType_Count;
    _JPH_SwingType_Force32 :: JPH_SwingType_Force32;
}

JPH_SixDOFConstraintAxis :: enum s32 {
    TranslationX                            :: 0;
    TranslationY                            :: 1;
    TranslationZ                            :: 2;

    RotationX                               :: 3;
    RotationY                               :: 4;
    RotationZ                               :: 5;

    JPH_SixDOFConstraintAxis_Num            :: 6;
    JPH_SixDOFConstraintAxis_NumTranslation :: 3;
    JPH_SixDOFConstraintAxis_Force32        :: 2147483647;

    JPH_SixDOFConstraintAxis_TranslationX    :: TranslationX;
    JPH_SixDOFConstraintAxis_TranslationY    :: TranslationY;
    JPH_SixDOFConstraintAxis_TranslationZ    :: TranslationZ;

    JPH_SixDOFConstraintAxis_RotationX       :: RotationX;
    JPH_SixDOFConstraintAxis_RotationY       :: RotationY;
    JPH_SixDOFConstraintAxis_RotationZ       :: RotationZ;

    _JPH_SixDOFConstraintAxis_Num            :: JPH_SixDOFConstraintAxis_Num;
    _JPH_SixDOFConstraintAxis_NumTranslation :: JPH_SixDOFConstraintAxis_NumTranslation;
    _JPH_SixDOFConstraintAxis_Force32        :: JPH_SixDOFConstraintAxis_Force32;
}

JPH_SpringMode :: enum s32 {
    FrequencyAndDamping    :: 0;
    StiffnessAndDamping    :: 1;

    JPH_SpringMode_Count   :: 2;
    JPH_SpringMode_Force32 :: 2147483647;

    JPH_SpringMode_FrequencyAndDamping :: FrequencyAndDamping;
    JPH_SpringMode_StiffnessAndDamping :: StiffnessAndDamping;

    _JPH_SpringMode_Count              :: JPH_SpringMode_Count;
    _JPH_SpringMode_Force32            :: JPH_SpringMode_Force32;
}

/// Defines how to color soft body constraints
JPH_SoftBodyConstraintColor :: enum s32 {
    ConstraintType                      :: 0;
    ConstraintGroup                     :: 1;
    ConstraintOrder                     :: 2;

    JPH_SoftBodyConstraintColor_Count   :: 3;
    JPH_SoftBodyConstraintColor_Force32 :: 2147483647;

    JPH_SoftBodyConstraintColor_ConstraintType  :: ConstraintType;
    JPH_SoftBodyConstraintColor_ConstraintGroup :: ConstraintGroup;
    JPH_SoftBodyConstraintColor_ConstraintOrder :: ConstraintOrder;

    _JPH_SoftBodyConstraintColor_Count          :: JPH_SoftBodyConstraintColor_Count;
    _JPH_SoftBodyConstraintColor_Force32        :: JPH_SoftBodyConstraintColor_Force32;
}

JPH_BodyManager_ShapeColor :: enum s32 {
    InstanceColor                      :: 0;
    ShapeTypeColor                     :: 1;
    MotionTypeColor                    :: 2;
    SleepColor                         :: 3;
    IslandColor                        :: 4;
    MaterialColor                      :: 5;

    JPH_BodyManager_ShapeColor_Count   :: 6;
    JPH_BodyManager_ShapeColor_Force32 :: 2147483647;

    JPH_BodyManager_ShapeColor_InstanceColor   :: InstanceColor;
    JPH_BodyManager_ShapeColor_ShapeTypeColor  :: ShapeTypeColor;
    JPH_BodyManager_ShapeColor_MotionTypeColor :: MotionTypeColor;
    JPH_BodyManager_ShapeColor_SleepColor      :: SleepColor;
    JPH_BodyManager_ShapeColor_IslandColor     :: IslandColor;
    JPH_BodyManager_ShapeColor_MaterialColor   :: MaterialColor;

    _JPH_BodyManager_ShapeColor_Count          :: JPH_BodyManager_ShapeColor_Count;
    _JPH_BodyManager_ShapeColor_Force32        :: JPH_BodyManager_ShapeColor_Force32;
}

JPH_DebugRenderer_CastShadow :: enum s32 {
    On                                   :: 0;
    Off                                  :: 1;

    JPH_DebugRenderer_CastShadow_Count   :: 2;
    JPH_DebugRenderer_CastShadow_Force32 :: 2147483647;

    JPH_DebugRenderer_CastShadow_On       :: On;
    JPH_DebugRenderer_CastShadow_Off      :: Off;

    _JPH_DebugRenderer_CastShadow_Count   :: JPH_DebugRenderer_CastShadow_Count;
    _JPH_DebugRenderer_CastShadow_Force32 :: JPH_DebugRenderer_CastShadow_Force32;
}

JPH_DebugRenderer_DrawMode :: enum s32 {
    Solid                              :: 0;
    Wireframe                          :: 1;

    JPH_DebugRenderer_DrawMode_Count   :: 2;
    JPH_DebugRenderer_DrawMode_Force32 :: 2147483647;

    JPH_DebugRenderer_DrawMode_Solid     :: Solid;
    JPH_DebugRenderer_DrawMode_Wireframe :: Wireframe;

    _JPH_DebugRenderer_DrawMode_Count    :: JPH_DebugRenderer_DrawMode_Count;
    _JPH_DebugRenderer_DrawMode_Force32  :: JPH_DebugRenderer_DrawMode_Force32;
}

JPH_Mesh_Shape_BuildQuality :: enum s32 {
    FavorRuntimePerformance             :: 0;
    FavorBuildSpeed                     :: 1;

    JPH_Mesh_Shape_BuildQuality_Count   :: 2;
    JPH_Mesh_Shape_BuildQuality_Force32 :: 2147483647;

    JPH_Mesh_Shape_BuildQuality_FavorRuntimePerformance :: FavorRuntimePerformance;
    JPH_Mesh_Shape_BuildQuality_FavorBuildSpeed         :: FavorBuildSpeed;

    _JPH_Mesh_Shape_BuildQuality_Count                  :: JPH_Mesh_Shape_BuildQuality_Count;
    _JPH_Mesh_Shape_BuildQuality_Force32                :: JPH_Mesh_Shape_BuildQuality_Force32;
}

JPH_Vec3 :: struct {
    x: float;
    y: float;
    z: float;
}

JPH_Vec4 :: struct {
    x: float;
    y: float;
    z: float;
    w: float;
}

JPH_Quat :: struct {
    x: float;
    y: float;
    z: float;
    w: float;
}

JPH_Plane :: struct {
    normal:   JPH_Vec3;
    distance: float;
}

JPH_Matrix4x4 :: struct {
    m11: float;
    m12: float;
    m13: float;
    m14: float;
    m21: float;
    m22: float;
    m23: float;
    m24: float;
    m31: float;
    m32: float;
    m33: float;
    m34: float;
    m41: float;
    m42: float;
    m43: float;
    m44: float;
}

JPH_RVec3 :: JPH_Vec3;
JPH_RMatrix4x4 :: JPH_Matrix4x4;

JPH_Color :: u32;

JPH_AABox :: struct {
    min: JPH_Vec3;
    max: JPH_Vec3;
}

JPH_Triangle :: struct {
    v1:            JPH_Vec3;
    v2:            JPH_Vec3;
    v3:            JPH_Vec3;
    materialIndex: u32;
}

JPH_IndexedTriangleNoMaterial :: struct {
    i1: u32;
    i2: u32;
    i3: u32;
}

JPH_IndexedTriangle :: struct {
    i1:            u32;
    i2:            u32;
    i3:            u32;
    materialIndex: u32;
    userData:      u32;
}

JPH_MassProperties :: struct {
    mass:    float;
    inertia: JPH_Matrix4x4;
}

JPH_CollideSettingsBase :: struct {
    activeEdgeMode:              JPH_ActiveEdgeMode; /* = JPH_ActiveEdgeMode_CollideOnlyWithActive*/

    collectFacesMode:            JPH_CollectFacesMode; /* = JPH_CollectFacesMode_NoFaces*/

    collisionTolerance:          float; /* = JPH_DEFAULT_COLLISION_TOLERANCE*/

    penetrationTolerance:        float; /* = JPH_DEFAULT_PENETRATION_TOLERANCE*/

    activeEdgeMovementDirection: JPH_Vec3; /* = Vec3::sZero()*/
}

/* CollideShapeSettings */
JPH_CollideShapeSettings :: struct {
    base:                  JPH_CollideSettingsBase; /* Inherics JPH_CollideSettingsBase */

    maxSeparationDistance: float; /* = 0.0f*/

    backFaceMode:          JPH_BackFaceMode; /* = JPH_BackFaceMode_IgnoreBackFaces*/
}

/* ShapeCastSettings */
JPH_ShapeCastSettings :: struct {
    base:                            JPH_CollideSettingsBase; /* Inherics JPH_CollideSettingsBase */

    backFaceModeTriangles:           JPH_BackFaceMode; /* = JPH_BackFaceMode_IgnoreBackFaces*/

    backFaceModeConvex:              JPH_BackFaceMode; /* = JPH_BackFaceMode_IgnoreBackFaces*/

    useShrunkenShapeAndConvexRadius: bool; /* = false*/

    returnDeepestPoint:              bool; /* = false*/
}

JPH_RayCastSettings :: struct {
    backFaceModeTriangles: JPH_BackFaceMode; /* = JPH_BackFaceMode_IgnoreBackFaces*/

    backFaceModeConvex:    JPH_BackFaceMode; /* = JPH_BackFaceMode_IgnoreBackFaces*/

    treatConvexAsSolid:    bool; /* = true*/
}

JPH_SpringSettings :: struct {
    mode:                 JPH_SpringMode;
    frequencyOrStiffness: float;
    damping:              float;
}

JPH_MotorSettings :: struct {
    springSettings: JPH_SpringSettings;
    minForceLimit:  float;
    maxForceLimit:  float;
    minTorqueLimit: float;
    maxTorqueLimit: float;
}

JPH_SubShapeIDPair :: struct {
    Body1ID:     JPH_BodyID;
    subShapeID1: JPH_SubShapeID;
    Body2ID:     JPH_BodyID;
    subShapeID2: JPH_SubShapeID;
}

JPH_BroadPhaseCastResult :: struct {
    bodyID:   JPH_BodyID;
    fraction: float;
}

JPH_RayCastResult :: struct {
    bodyID:      JPH_BodyID;
    fraction:    float;
    subShapeID2: JPH_SubShapeID;
}

JPH_CollidePointResult :: struct {
    bodyID:      JPH_BodyID;
    subShapeID2: JPH_SubShapeID;
}

JPH_CollideShapeResult :: struct {
    contactPointOn1:  JPH_Vec3;
    contactPointOn2:  JPH_Vec3;
    penetrationAxis:  JPH_Vec3;
    penetrationDepth: float;
    subShapeID1:      JPH_SubShapeID;
    subShapeID2:      JPH_SubShapeID;
    bodyID2:          JPH_BodyID;
    shape1FaceCount:  u32;
    shape1Faces:      *JPH_Vec3;
    shape2FaceCount:  u32;
    shape2Faces:      *JPH_Vec3;
}

JPH_ShapeCastResult :: struct {
    contactPointOn1:  JPH_Vec3;
    contactPointOn2:  JPH_Vec3;
    penetrationAxis:  JPH_Vec3;
    penetrationDepth: float;
    subShapeID1:      JPH_SubShapeID;
    subShapeID2:      JPH_SubShapeID;
    bodyID2:          JPH_BodyID;
    fraction:         float;
    isBackFaceHit:    bool;
}

JPH_DrawSettings :: struct {
    drawGetSupportFunction:        bool; ///< Draw the GetSupport() function, used for convex collision detection
    drawSupportDirection:          bool; ///< When drawing the support function, also draw which direction mapped to a specific support point
    drawGetSupportingFace:         bool; ///< Draw the faces that were found colliding during collision detection
    drawShape:                     bool; ///< Draw the shapes of all bodies
    drawShapeWireframe:            bool; ///< When mDrawShape is true and this is true, the shapes will be drawn in wireframe instead of solid.
    drawShapeColor:                JPH_BodyManager_ShapeColor; ///< Coloring scheme to use for shapes
    drawBoundingBox:               bool; ///< Draw a bounding box per body
    drawCenterOfMassTransform:     bool; ///< Draw the center of mass for each body
    drawWorldTransform:            bool; ///< Draw the world transform (which can be different than the center of mass) for each body
    drawVelocity:                  bool; ///< Draw the velocity vector for each body
    drawMassAndInertia:            bool; ///< Draw the mass and inertia (as the box equivalent) for each body
    drawSleepStats:                bool; ///< Draw stats regarding the sleeping algorithm of each body
    drawSoftBodyVertices:          bool; ///< Draw the vertices of soft bodies
    drawSoftBodyVertexVelocities:  bool; ///< Draw the velocities of the vertices of soft bodies
    drawSoftBodyEdgeConstraints:   bool; ///< Draw the edge constraints of soft bodies
    drawSoftBodyBendConstraints:   bool; ///< Draw the bend constraints of soft bodies
    drawSoftBodyVolumeConstraints: bool; ///< Draw the volume constraints of soft bodies
    drawSoftBodySkinConstraints:   bool; ///< Draw the skin constraints of soft bodies
    drawSoftBodyLRAConstraints:    bool; ///< Draw the LRA constraints of soft bodies
    drawSoftBodyPredictedBounds:   bool; ///< Draw the predicted bounds of soft bodies
    drawSoftBodyConstraintColor:   JPH_SoftBodyConstraintColor; ///< Coloring scheme to use for soft body constraints
}

JPH_SupportingFace :: struct {
    count:    u32;
    vertices: [32] JPH_Vec3;
}

JPH_CollisionGroup :: struct {
    groupFilter: *JPH_GroupFilter;
    groupID:     JPH_CollisionGroupID;
    subGroupID:  JPH_CollisionSubGroupID;
}

JPH_CastRayResultCallback :: #type (_context: *void, result: *JPH_RayCastResult) -> void #c_call;
JPH_RayCastBodyResultCallback :: #type (_context: *void, result: *JPH_BroadPhaseCastResult) -> void #c_call;
JPH_CollideShapeBodyResultCallback :: #type (_context: *void, result: JPH_BodyID) -> void #c_call;
JPH_CollidePointResultCallback :: #type (_context: *void, result: *JPH_CollidePointResult) -> void #c_call;
JPH_CollideShapeResultCallback :: #type (_context: *void, result: *JPH_CollideShapeResult) -> void #c_call;
JPH_CastShapeResultCallback :: #type (_context: *void, result: *JPH_ShapeCastResult) -> void #c_call;

JPH_CastRayCollectorCallback :: #type (_context: *void, result: *JPH_RayCastResult) -> float #c_call;
JPH_RayCastBodyCollectorCallback :: #type (_context: *void, result: *JPH_BroadPhaseCastResult) -> float #c_call;
JPH_CollideShapeBodyCollectorCallback :: #type (_context: *void, result: JPH_BodyID) -> float #c_call;
JPH_CollidePointCollectorCallback :: #type (_context: *void, result: *JPH_CollidePointResult) -> float #c_call;
JPH_CollideShapeCollectorCallback :: #type (_context: *void, result: *JPH_CollideShapeResult) -> float #c_call;
JPH_CastShapeCollectorCallback :: #type (_context: *void, result: *JPH_ShapeCastResult) -> float #c_call;

JPH_CollisionEstimationResultImpulse :: struct {
    contactImpulse:   float;
    frictionImpulse1: float;
    frictionImpulse2: float;
}

JPH_CollisionEstimationResult :: struct {
    linearVelocity1:  JPH_Vec3;
    angularVelocity1: JPH_Vec3;
    linearVelocity2:  JPH_Vec3;
    angularVelocity2: JPH_Vec3;

    tangent1:         JPH_Vec3;
    tangent2:         JPH_Vec3;

    impulseCount:     u32;
    impulses:         *JPH_CollisionEstimationResultImpulse;
}

JPH_BodyActivationListener :: struct {}
JPH_BodyDrawFilter :: struct {}

JPH_SharedMutex :: struct {}

JPH_DebugRenderer :: struct {}

JPH_Constraint :: struct {}
JPH_TwoBodyConstraint :: struct {}
JPH_FixedConstraint :: struct {}
JPH_DistanceConstraint :: struct {}
JPH_PointConstraint :: struct {}
JPH_HingeConstraint :: struct {}
JPH_SliderConstraint :: struct {}
JPH_ConeConstraint :: struct {}
JPH_SwingTwistConstraint :: struct {}
JPH_SixDOFConstraint :: struct {}
JPH_GearConstraint :: struct {}

JPH_CharacterBase :: struct {}
JPH_Character :: struct {}
JPH_CharacterVirtual :: struct {}
JPH_CharacterContactListener :: struct {}
JPH_CharacterVsCharacterCollision :: struct {}

JPH_Skeleton :: struct {}
JPH_RagdollSettings :: struct {}
JPH_Ragdoll :: struct {}

JPH_ConstraintSettings :: struct {
    enabled:                  bool;
    constraintPriority:       u32;
    numVelocityStepsOverride: u32;
    numPositionStepsOverride: u32;
    drawConstraintSize:       float;
    userData:                 u64;
}

JPH_FixedConstraintSettings :: struct {
    base:            JPH_ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:           JPH_ConstraintSpace;
    autoDetectPoint: bool;
    point1:          JPH_RVec3;
    axisX1:          JPH_Vec3;
    axisY1:          JPH_Vec3;
    point2:          JPH_RVec3;
    axisX2:          JPH_Vec3;
    axisY2:          JPH_Vec3;
}

JPH_DistanceConstraintSettings :: struct {
    base:                 JPH_ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:                JPH_ConstraintSpace;
    point1:               JPH_RVec3;
    point2:               JPH_RVec3;
    minDistance:          float;
    maxDistance:          float;
    limitsSpringSettings: JPH_SpringSettings;
}

JPH_PointConstraintSettings :: struct {
    base:   JPH_ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:  JPH_ConstraintSpace;
    point1: JPH_RVec3;
    point2: JPH_RVec3;
}

JPH_HingeConstraintSettings :: struct {
    base:                 JPH_ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:                JPH_ConstraintSpace;
    point1:               JPH_RVec3;
    hingeAxis1:           JPH_Vec3;
    normalAxis1:          JPH_Vec3;
    point2:               JPH_RVec3;
    hingeAxis2:           JPH_Vec3;
    normalAxis2:          JPH_Vec3;
    limitsMin:            float;
    limitsMax:            float;
    limitsSpringSettings: JPH_SpringSettings;
    maxFrictionTorque:    float;
    motorSettings:        JPH_MotorSettings;
}

JPH_SliderConstraintSettings :: struct {
    base:                 JPH_ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:                JPH_ConstraintSpace;
    autoDetectPoint:      bool;
    point1:               JPH_RVec3;
    sliderAxis1:          JPH_Vec3;
    normalAxis1:          JPH_Vec3;
    point2:               JPH_RVec3;
    sliderAxis2:          JPH_Vec3;
    normalAxis2:          JPH_Vec3;
    limitsMin:            float;
    limitsMax:            float;
    limitsSpringSettings: JPH_SpringSettings;
    maxFrictionForce:     float;
    motorSettings:        JPH_MotorSettings;
}

JPH_ConeConstraintSettings :: struct {
    base:          JPH_ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:         JPH_ConstraintSpace;
    point1:        JPH_RVec3;
    twistAxis1:    JPH_Vec3;
    point2:        JPH_RVec3;
    twistAxis2:    JPH_Vec3;
    halfConeAngle: float;
}

JPH_SwingTwistConstraintSettings :: struct {
    base:                JPH_ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:               JPH_ConstraintSpace;
    position1:           JPH_RVec3;
    twistAxis1:          JPH_Vec3;
    planeAxis1:          JPH_Vec3;
    position2:           JPH_RVec3;
    twistAxis2:          JPH_Vec3;
    planeAxis2:          JPH_Vec3;
    swingType:           JPH_SwingType;
    normalHalfConeAngle: float;
    planeHalfConeAngle:  float;
    twistMinAngle:       float;
    twistMaxAngle:       float;
    maxFrictionTorque:   float;
    swingMotorSettings:  JPH_MotorSettings;
    twistMotorSettings:  JPH_MotorSettings;
}

JPH_SixDOFConstraintSettings :: struct {
    base:                 JPH_ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:                JPH_ConstraintSpace;
    position1:            JPH_RVec3;
    axisX1:               JPH_Vec3;
    axisY1:               JPH_Vec3;
    position2:            JPH_RVec3;
    axisX2:               JPH_Vec3;
    axisY2:               JPH_Vec3;
    maxFriction:          [6] float;
    swingType:            JPH_SwingType;
    limitMin:             [6] float;
    limitMax:             [6] float;

    limitsSpringSettings: [3] JPH_SpringSettings;
    motorSettings:        [6] JPH_MotorSettings;
}

JPH_GearConstraintSettings :: struct {
    base:       JPH_ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:      JPH_ConstraintSpace;
    hingeAxis1: JPH_Vec3;
    hingeAxis2: JPH_Vec3;
    ratio:      float;
}

JPH_BodyLockRead :: struct {
    lockInterface: *JPH_BodyLockInterface;
    mutex:         *JPH_SharedMutex;
    body:          *JPH_Body;
}

JPH_BodyLockWrite :: struct {
    lockInterface: *JPH_BodyLockInterface;
    mutex:         *JPH_SharedMutex;
    body:          *JPH_Body;
}

JPH_BodyLockMultiRead :: struct {}
JPH_BodyLockMultiWrite :: struct {}

JPH_ExtendedUpdateSettings :: struct {
    stickToFloorStepDown:             JPH_Vec3;
    walkStairsStepUp:                 JPH_Vec3;
    walkStairsMinStepForward:         float;
    walkStairsStepForwardTest:        float;
    walkStairsCosAngleForwardContact: float;
    walkStairsStepDownExtra:          JPH_Vec3;
}

JPH_CharacterBaseSettings :: struct {
    up:                          JPH_Vec3;
    supportingVolume:            JPH_Plane;
    maxSlopeAngle:               float;
    enhancedInternalEdgeRemoval: bool;
    shape:                       *JPH_Shape;
}

/* Character */
JPH_CharacterSettings :: struct {
    base:          JPH_CharacterBaseSettings; /* Inherics JPH_CharacterBaseSettings */
    layer:         JPH_ObjectLayer;
    mass:          float;
    friction:      float;
    gravityFactor: float;
    allowedDOFs:   JPH_AllowedDOFs;
}

/* CharacterVirtual */
JPH_CharacterVirtualSettings :: struct {
    base:                      JPH_CharacterBaseSettings; /* Inherics JPH_CharacterBaseSettings */
    ID:                        JPH_CharacterID;
    mass:                      float;
    maxStrength:               float;
    shapeOffset:               JPH_Vec3;
    backFaceMode:              JPH_BackFaceMode;
    predictiveContactDistance: float;
    maxCollisionIterations:    u32;
    maxConstraintIterations:   u32;
    minTimeRemaining:          float;
    collisionTolerance:        float;
    characterPadding:          float;
    maxNumHits:                u32;
    hitReductionCosMaxAngle:   float;
    penetrationRecoverySpeed:  float;
    innerBodyShape:            *JPH_Shape;
    innerBodyIDOverride:       JPH_BodyID;
    innerBodyLayer:            JPH_ObjectLayer;
}

JPH_CharacterContactSettings :: struct {
    canPushCharacter:   bool;
    canReceiveImpulses: bool;
}

JPH_CharacterVirtualContact :: struct {
    hash:             u64;
    bodyB:            JPH_BodyID;
    characterIDB:     JPH_CharacterID;
    subShapeIDB:      JPH_SubShapeID;
    position:         JPH_RVec3;
    linearVelocity:   JPH_Vec3;
    contactNormal:    JPH_Vec3;
    surfaceNormal:    JPH_Vec3;
    distance:         float;
    fraction:         float;
    motionTypeB:      JPH_MotionType;
    isSensorB:        bool;
    characterB:       *JPH_CharacterVirtual;
    userData:         u64;
    material:         *JPH_PhysicsMaterial;
    hadCollision:     bool;
    wasDiscarded:     bool;
    canPushCharacter: bool;
}

JPH_TraceFunc :: #type (mssage: *u8) -> void #c_call;
JPH_AssertFailureFunc :: #type (expression: *u8, mssage: *u8, file: *u8, line: u32) -> bool #c_call;

JPH_JobFunction :: #type (arg: *void) -> void #c_call;
JPH_QueueJobCallback :: #type (_context: *void, job: JPH_JobFunction, arg: *void) -> void #c_call;
JPH_QueueJobsCallback :: #type (_context: *void, job: JPH_JobFunction, args: **void, count: u32) -> void #c_call;

JobSystemThreadPoolConfig :: struct {
    maxJobs:     u32;
    maxBarriers: u32;
    numThreads:  s32;
}

JPH_JobSystemConfig :: struct {
    _context:       *void;
    queueJob:       JPH_QueueJobCallback;
    queueJobs:      JPH_QueueJobsCallback;
    maxConcurrency: u32;
    maxBarriers:    u32;
}

JPH_JobSystem :: struct {}

JPH_JobSystemThreadPool_Create :: (config: *JobSystemThreadPoolConfig) -> *JPH_JobSystem #foreign joltc;
JPH_JobSystemCallback_Create :: (config: *JPH_JobSystemConfig) -> *JPH_JobSystem #foreign joltc;
JPH_JobSystem_Destroy :: (jobSystem: *JPH_JobSystem) -> void #foreign joltc;

JPH_Init :: () -> bool #foreign joltc;
JPH_Shutdown :: () -> void #foreign joltc;
JPH_SetTraceHandler :: (handler: JPH_TraceFunc) -> void #foreign joltc;
JPH_SetAssertFailureHandler :: (handler: JPH_AssertFailureFunc) -> void #foreign joltc;

/* Structs free members */
JPH_CollideShapeResult_FreeMembers :: (result: *JPH_CollideShapeResult) -> void #foreign joltc;
JPH_CollisionEstimationResult_FreeMembers :: (result: *JPH_CollisionEstimationResult) -> void #foreign joltc;

/* JPH_BroadPhaseLayerInterface */
JPH_BroadPhaseLayerInterfaceMask_Create :: (numBroadPhaseLayers: u32) -> *JPH_BroadPhaseLayerInterface #foreign joltc;
JPH_BroadPhaseLayerInterfaceMask_ConfigureLayer :: (bpInterface: *JPH_BroadPhaseLayerInterface, broadPhaseLayer: JPH_BroadPhaseLayer, groupsToInclude: u32, groupsToExclude: u32) -> void #foreign joltc;

JPH_BroadPhaseLayerInterfaceTable_Create :: (numObjectLayers: u32, numBroadPhaseLayers: u32) -> *JPH_BroadPhaseLayerInterface #foreign joltc;
JPH_BroadPhaseLayerInterfaceTable_MapObjectToBroadPhaseLayer :: (bpInterface: *JPH_BroadPhaseLayerInterface, objectLayer: JPH_ObjectLayer, broadPhaseLayer: JPH_BroadPhaseLayer) -> void #foreign joltc;

/* JPH_ObjectLayerPairFilter */
JPH_ObjectLayerPairFilterMask_Create :: () -> *JPH_ObjectLayerPairFilter #foreign joltc;
JPH_ObjectLayerPairFilterMask_GetObjectLayer :: (group: u32, mask: u32) -> JPH_ObjectLayer #foreign joltc;
JPH_ObjectLayerPairFilterMask_GetGroup :: (layer: JPH_ObjectLayer) -> u32 #foreign joltc;
JPH_ObjectLayerPairFilterMask_GetMask :: (layer: JPH_ObjectLayer) -> u32 #foreign joltc;

JPH_ObjectLayerPairFilterTable_Create :: (numObjectLayers: u32) -> *JPH_ObjectLayerPairFilter #foreign joltc;
JPH_ObjectLayerPairFilterTable_DisableCollision :: (objectFilter: *JPH_ObjectLayerPairFilter, layer1: JPH_ObjectLayer, layer2: JPH_ObjectLayer) -> void #foreign joltc;
JPH_ObjectLayerPairFilterTable_EnableCollision :: (objectFilter: *JPH_ObjectLayerPairFilter, layer1: JPH_ObjectLayer, layer2: JPH_ObjectLayer) -> void #foreign joltc;
JPH_ObjectLayerPairFilterTable_ShouldCollide :: (objectFilter: *JPH_ObjectLayerPairFilter, layer1: JPH_ObjectLayer, layer2: JPH_ObjectLayer) -> bool #foreign joltc;

/* JPH_ObjectVsBroadPhaseLayerFilter */
JPH_ObjectVsBroadPhaseLayerFilterMask_Create :: (broadPhaseLayerInterface: *JPH_BroadPhaseLayerInterface) -> *JPH_ObjectVsBroadPhaseLayerFilter #foreign joltc;

JPH_ObjectVsBroadPhaseLayerFilterTable_Create :: (broadPhaseLayerInterface: *JPH_BroadPhaseLayerInterface, numBroadPhaseLayers: u32, objectLayerPairFilter: *JPH_ObjectLayerPairFilter, numObjectLayers: u32) -> *JPH_ObjectVsBroadPhaseLayerFilter #foreign joltc;

JPH_DrawSettings_InitDefault :: (settings: *JPH_DrawSettings) -> void #foreign joltc;

/* JPH_PhysicsSystem */
JPH_PhysicsSystemSettings :: struct {
    maxBodies:                     u32; /* 10240 */
    numBodyMutexes:                u32; /* 0 */
    maxBodyPairs:                  u32; /* 65536 */
    maxContactConstraints:         u32; /* 10240 */
    _padding:                      u32;
    broadPhaseLayerInterface:      *JPH_BroadPhaseLayerInterface;
    objectLayerPairFilter:         *JPH_ObjectLayerPairFilter;
    objectVsBroadPhaseLayerFilter: *JPH_ObjectVsBroadPhaseLayerFilter;
}

JPH_PhysicsSettings :: struct {
    maxInFlightBodyPairs:                 s32;
    stepListenersBatchSize:               s32;
    stepListenerBatchesPerJob:            s32;
    baumgarte:                            float;
    speculativeContactDistance:           float;
    penetrationSlop:                      float;
    linearCastThreshold:                  float;
    linearCastMaxPenetration:             float;
    manifoldTolerance:                    float;
    maxPenetrationDistance:               float;
    bodyPairCacheMaxDeltaPositionSq:      float;
    bodyPairCacheCosMaxDeltaRotationDiv2: float;
    contactNormalCosMaxDeltaRotation:     float;
    contactPointPreserveLambdaMaxDistSq:  float;
    numVelocitySteps:                     u32;
    numPositionSteps:                     u32;
    minVelocityForRestitution:            float;
    timeBeforeSleep:                      float;
    pointVelocitySleepThreshold:          float;
    deterministicSimulation:              bool;
    constraintWarmStart:                  bool;
    useBodyPairContactCache:              bool;
    useManifoldReduction:                 bool;
    useLargeIslandSplitter:               bool;
    allowSleeping:                        bool;
    checkActiveEdges:                     bool;
}

JPH_PhysicsSystem_Create :: (settings: *JPH_PhysicsSystemSettings) -> *JPH_PhysicsSystem #foreign joltc;
JPH_PhysicsSystem_Destroy :: (system: *JPH_PhysicsSystem) -> void #foreign joltc;

JPH_PhysicsSystem_SetPhysicsSettings :: (system: *JPH_PhysicsSystem, settings: *JPH_PhysicsSettings) -> void #foreign joltc;
JPH_PhysicsSystem_GetPhysicsSettings :: (system: *JPH_PhysicsSystem, result: *JPH_PhysicsSettings) -> void #foreign joltc;

JPH_PhysicsSystem_OptimizeBroadPhase :: (system: *JPH_PhysicsSystem) -> void #foreign joltc;
JPH_PhysicsSystem_Update :: (system: *JPH_PhysicsSystem, deltaTime: float, collisionSteps: s32, jobSystem: *JPH_JobSystem) -> JPH_PhysicsUpdateError #foreign joltc;

JPH_PhysicsSystem_GetBodyInterface :: (system: *JPH_PhysicsSystem) -> *JPH_BodyInterface #foreign joltc;
JPH_PhysicsSystem_GetBodyInterfaceNoLock :: (system: *JPH_PhysicsSystem) -> *JPH_BodyInterface #foreign joltc;

JPH_PhysicsSystem_GetBodyLockInterface :: (system: *JPH_PhysicsSystem) -> *JPH_BodyLockInterface #foreign joltc;
JPH_PhysicsSystem_GetBodyLockInterfaceNoLock :: (system: *JPH_PhysicsSystem) -> *JPH_BodyLockInterface #foreign joltc;

JPH_PhysicsSystem_GetBroadPhaseQuery :: (system: *JPH_PhysicsSystem) -> *JPH_BroadPhaseQuery #foreign joltc;

JPH_PhysicsSystem_GetNarrowPhaseQuery :: (system: *JPH_PhysicsSystem) -> *JPH_NarrowPhaseQuery #foreign joltc;
JPH_PhysicsSystem_GetNarrowPhaseQueryNoLock :: (system: *JPH_PhysicsSystem) -> *JPH_NarrowPhaseQuery #foreign joltc;

JPH_PhysicsSystem_SetContactListener :: (system: *JPH_PhysicsSystem, listener: *JPH_ContactListener) -> void #foreign joltc;
JPH_PhysicsSystem_SetBodyActivationListener :: (system: *JPH_PhysicsSystem, listener: *JPH_BodyActivationListener) -> void #foreign joltc;
JPH_PhysicsSystem_SetSimShapeFilter :: (system: *JPH_PhysicsSystem, filter: *JPH_SimShapeFilter) -> void #foreign joltc;

JPH_PhysicsSystem_WereBodiesInContact :: (system: *JPH_PhysicsSystem, body1: JPH_BodyID, body2: JPH_BodyID) -> bool #foreign joltc;

JPH_PhysicsSystem_GetNumBodies :: (system: *JPH_PhysicsSystem) -> u32 #foreign joltc;
JPH_PhysicsSystem_GetNumActiveBodies :: (system: *JPH_PhysicsSystem, type: JPH_BodyType) -> u32 #foreign joltc;
JPH_PhysicsSystem_GetMaxBodies :: (system: *JPH_PhysicsSystem) -> u32 #foreign joltc;
JPH_PhysicsSystem_GetNumConstraints :: (system: *JPH_PhysicsSystem) -> u32 #foreign joltc;

JPH_PhysicsSystem_SetGravity :: (system: *JPH_PhysicsSystem, value: *JPH_Vec3) -> void #foreign joltc;
JPH_PhysicsSystem_GetGravity :: (system: *JPH_PhysicsSystem, result: *JPH_Vec3) -> void #foreign joltc;

JPH_PhysicsSystem_AddConstraint :: (system: *JPH_PhysicsSystem, constraint: *JPH_Constraint) -> void #foreign joltc;
JPH_PhysicsSystem_RemoveConstraint :: (system: *JPH_PhysicsSystem, constraint: *JPH_Constraint) -> void #foreign joltc;

JPH_PhysicsSystem_AddConstraints :: (system: *JPH_PhysicsSystem, constraints: **JPH_Constraint, count: u32) -> void #foreign joltc;
JPH_PhysicsSystem_RemoveConstraints :: (system: *JPH_PhysicsSystem, constraints: **JPH_Constraint, count: u32) -> void #foreign joltc;

JPH_PhysicsSystem_GetBodies :: (system: *JPH_PhysicsSystem, ids: *JPH_BodyID, count: u32) -> void #foreign joltc;
JPH_PhysicsSystem_GetConstraints :: (system: *JPH_PhysicsSystem, constraints: **JPH_Constraint, count: u32) -> void #foreign joltc;

JPH_PhysicsSystem_DrawBodies :: (system: *JPH_PhysicsSystem, settings: *JPH_DrawSettings, renderer: *JPH_DebugRenderer, bodyFilter: *JPH_BodyDrawFilter) -> void #foreign joltc;
JPH_PhysicsSystem_DrawConstraints :: (system: *JPH_PhysicsSystem, renderer: *JPH_DebugRenderer) -> void #foreign joltc;
JPH_PhysicsSystem_DrawConstraintLimits :: (system: *JPH_PhysicsSystem, renderer: *JPH_DebugRenderer) -> void #foreign joltc;
JPH_PhysicsSystem_DrawConstraintReferenceFrame :: (system: *JPH_PhysicsSystem, renderer: *JPH_DebugRenderer) -> void #foreign joltc;

/* Math */
JPH_Quaternion_FromTo :: (from: *JPH_Vec3, to: *JPH_Vec3, quat: *JPH_Quat) -> void #foreign joltc;
JPH_Quat_GetAxisAngle :: (quat: *JPH_Quat, outAxis: *JPH_Vec3, outAngle: *float) -> void #foreign joltc;
JPH_Quat_GetEulerAngles :: (quat: *JPH_Quat, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Quat_RotateAxisX :: (quat: *JPH_Quat, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Quat_RotateAxisY :: (quat: *JPH_Quat, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Quat_RotateAxisZ :: (quat: *JPH_Quat, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Quat_Inversed :: (quat: *JPH_Quat, result: *JPH_Quat) -> void #foreign joltc;
JPH_Quat_GetPerpendicular :: (quat: *JPH_Quat, result: *JPH_Quat) -> void #foreign joltc;
JPH_Quat_GetRotationAngle :: (quat: *JPH_Quat, axis: *JPH_Vec3) -> float #foreign joltc;
JPH_Quat_FromEulerAngles :: (angles: *JPH_Vec3, result: *JPH_Quat) -> void #foreign joltc;

JPH_Quat_Add :: (q1: *JPH_Quat, q2: *JPH_Quat, result: *JPH_Quat) -> void #foreign joltc;
JPH_Quat_Subtract :: (q1: *JPH_Quat, q2: *JPH_Quat, result: *JPH_Quat) -> void #foreign joltc;
JPH_Quat_Multiply :: (q1: *JPH_Quat, q2: *JPH_Quat, result: *JPH_Quat) -> void #foreign joltc;
JPH_Quat_MultiplyScalar :: (q: *JPH_Quat, scalar: float, result: *JPH_Quat) -> void #foreign joltc;

JPH_Quat_Dot :: (q1: *JPH_Quat, q2: *JPH_Quat, result: *float) -> void #foreign joltc;

JPH_Quat_Conjugated :: (quat: *JPH_Quat, result: *JPH_Quat) -> void #foreign joltc;
JPH_Quat_GetTwist :: (quat: *JPH_Quat, axis: *JPH_Vec3, result: *JPH_Quat) -> void #foreign joltc;
JPH_Quat_GetSwingTwist :: (quat: *JPH_Quat, outSwing: *JPH_Quat, outTwist: *JPH_Quat) -> void #foreign joltc;
JPH_Quat_LERP :: (from: *JPH_Quat, to: *JPH_Quat, fraction: float, result: *JPH_Quat) -> void #foreign joltc;
JPH_Quat_SLERP :: (from: *JPH_Quat, to: *JPH_Quat, fraction: float, result: *JPH_Quat) -> void #foreign joltc;
JPH_Quat_Rotate :: (quat: *JPH_Quat, vec: *JPH_Vec3, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Quat_InverseRotate :: (quat: *JPH_Quat, vec: *JPH_Vec3, result: *JPH_Vec3) -> void #foreign joltc;

JPH_Vec3_IsClose :: (v1: *JPH_Vec3, v2: *JPH_Vec3, maxDistSq: float) -> bool #foreign joltc;
JPH_Vec3_IsNearZero :: (v: *JPH_Vec3, maxDistSq: float) -> bool #foreign joltc;
JPH_Vec3_IsNormalized :: (v: *JPH_Vec3, tolerance: float) -> bool #foreign joltc;
JPH_Vec3_IsNaN :: (v: *JPH_Vec3) -> bool #foreign joltc;

JPH_Vec3_Negate :: (v: *JPH_Vec3, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Vec3_Normalized :: (v: *JPH_Vec3, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Vec3_Cross :: (v1: *JPH_Vec3, v2: *JPH_Vec3, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Vec3_Abs :: (v: *JPH_Vec3, result: *JPH_Vec3) -> void #foreign joltc;

JPH_Vec3_Length :: (v: *JPH_Vec3) -> float #foreign joltc;
JPH_Vec3_LengthSquared :: (v: *JPH_Vec3) -> float #foreign joltc;

JPH_Vec3_DotProduct :: (v1: *JPH_Vec3, v2: *JPH_Vec3, result: *float) -> void #foreign joltc;
JPH_Vec3_Normalize :: (v: *JPH_Vec3, result: *JPH_Vec3) -> void #foreign joltc;

JPH_Vec3_Add :: (v1: *JPH_Vec3, v2: *JPH_Vec3, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Vec3_Subtract :: (v1: *JPH_Vec3, v2: *JPH_Vec3, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Vec3_Multiply :: (v1: *JPH_Vec3, v2: *JPH_Vec3, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Vec3_MultiplyScalar :: (v: *JPH_Vec3, scalar: float, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Vec3_Divide :: (v1: *JPH_Vec3, v2: *JPH_Vec3, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Vec3_DivideScalar :: (v: *JPH_Vec3, scalar: float, result: *JPH_Vec3) -> void #foreign joltc;

JPH_Matrix4x4_Add :: (m1: *JPH_Matrix4x4, m2: *JPH_Matrix4x4, result: *JPH_Matrix4x4) -> void #foreign joltc;
JPH_Matrix4x4_Subtract :: (m1: *JPH_Matrix4x4, m2: *JPH_Matrix4x4, result: *JPH_Matrix4x4) -> void #foreign joltc;
JPH_Matrix4x4_Multiply :: (m1: *JPH_Matrix4x4, m2: *JPH_Matrix4x4, result: *JPH_Matrix4x4) -> void #foreign joltc;
JPH_Matrix4x4_MultiplyScalar :: (m: *JPH_Matrix4x4, scalar: float, result: *JPH_Matrix4x4) -> void #foreign joltc;

JPH_Matrix4x4_Zero :: (result: *JPH_Matrix4x4) -> void #foreign joltc;
JPH_Matrix4x4_Identity :: (result: *JPH_Matrix4x4) -> void #foreign joltc;
JPH_Matrix4x4_Rotation :: (result: *JPH_Matrix4x4, rotation: *JPH_Quat) -> void #foreign joltc;
JPH_Matrix4x4_Translation :: (result: *JPH_Matrix4x4, translation: *JPH_Vec3) -> void #foreign joltc;
JPH_Matrix4x4_RotationTranslation :: (result: *JPH_Matrix4x4, rotation: *JPH_Quat, translation: *JPH_Vec3) -> void #foreign joltc;
JPH_Matrix4x4_InverseRotationTranslation :: (result: *JPH_Matrix4x4, rotation: *JPH_Quat, translation: *JPH_Vec3) -> void #foreign joltc;
JPH_Matrix4x4_Scale :: (result: *JPH_Matrix4x4, scale: *JPH_Vec3) -> void #foreign joltc;
JPH_Matrix4x4_Inversed :: (m: *JPH_Matrix4x4, result: *JPH_Matrix4x4) -> void #foreign joltc;
JPH_Matrix4x4_Transposed :: (m: *JPH_Matrix4x4, result: *JPH_Matrix4x4) -> void #foreign joltc;

JPH_RMatrix4x4_Zero :: (result: *JPH_RMatrix4x4) -> void #foreign joltc;
JPH_RMatrix4x4_Identity :: (result: *JPH_RMatrix4x4) -> void #foreign joltc;
JPH_RMatrix4x4_Rotation :: (result: *JPH_RMatrix4x4, rotation: *JPH_Quat) -> void #foreign joltc;
JPH_RMatrix4x4_Translation :: (result: *JPH_RMatrix4x4, translation: *JPH_RVec3) -> void #foreign joltc;
JPH_RMatrix4x4_RotationTranslation :: (result: *JPH_RMatrix4x4, rotation: *JPH_Quat, translation: *JPH_RVec3) -> void #foreign joltc;
JPH_RMatrix4x4_InverseRotationTranslation :: (result: *JPH_RMatrix4x4, rotation: *JPH_Quat, translation: *JPH_RVec3) -> void #foreign joltc;
JPH_RMatrix4x4_Scale :: (result: *JPH_RMatrix4x4, scale: *JPH_Vec3) -> void #foreign joltc;
JPH_RMatrix4x4_Inversed :: (m: *JPH_RMatrix4x4, result: *JPH_RMatrix4x4) -> void #foreign joltc;

JPH_Matrix4x4_GetAxisX :: (matrix: *JPH_Matrix4x4, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Matrix4x4_GetAxisY :: (matrix: *JPH_Matrix4x4, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Matrix4x4_GetAxisZ :: (matrix: *JPH_Matrix4x4, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Matrix4x4_GetTranslation :: (matrix: *JPH_Matrix4x4, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Matrix4x4_GetQuaternion :: (matrix: *JPH_Matrix4x4, result: *JPH_Quat) -> void #foreign joltc;

/* Material */
JPH_PhysicsMaterial_Create :: (name: *u8, color: u32) -> *JPH_PhysicsMaterial #foreign joltc;
JPH_PhysicsMaterial_Destroy :: (material: *JPH_PhysicsMaterial) -> void #foreign joltc;
JPH_PhysicsMaterial_GetDebugName :: (material: *JPH_PhysicsMaterial) -> *u8 #foreign joltc;
JPH_PhysicsMaterial_GetDebugColor :: (material: *JPH_PhysicsMaterial) -> u32 #foreign joltc;

/* GroupFilter/GroupFilterTable */
JPH_GroupFilter_Destroy :: (groupFilter: *JPH_GroupFilter) -> void #foreign joltc;
JPH_GroupFilter_CanCollide :: (groupFilter: *JPH_GroupFilter, group1: *JPH_CollisionGroup, group2: *JPH_CollisionGroup) -> bool #foreign joltc;

JPH_GroupFilterTable_Create :: (numSubGroups: u32) -> *JPH_GroupFilterTable #foreign joltc;
JPH_GroupFilterTable_DisableCollision :: (table: *JPH_GroupFilterTable, subGroup1: JPH_CollisionSubGroupID, subGroup2: JPH_CollisionSubGroupID) -> void #foreign joltc;
JPH_GroupFilterTable_EnableCollision :: (table: *JPH_GroupFilterTable, subGroup1: JPH_CollisionSubGroupID, subGroup2: JPH_CollisionSubGroupID) -> void #foreign joltc;
JPH_GroupFilterTable_IsCollisionEnabled :: (table: *JPH_GroupFilterTable, subGroup1: JPH_CollisionSubGroupID, subGroup2: JPH_CollisionSubGroupID) -> bool #foreign joltc;

/* ShapeSettings */
JPH_ShapeSettings_Destroy :: (settings: *JPH_ShapeSettings) -> void #foreign joltc;
JPH_ShapeSettings_GetUserData :: (settings: *JPH_ShapeSettings) -> u64 #foreign joltc;
JPH_ShapeSettings_SetUserData :: (settings: *JPH_ShapeSettings, userData: u64) -> void #foreign joltc;

/* Shape */
JPH_Shape_Destroy :: (shape: *JPH_Shape) -> void #foreign joltc;
JPH_Shape_GetType :: (shape: *JPH_Shape) -> JPH_ShapeType #foreign joltc;
JPH_Shape_GetSubType :: (shape: *JPH_Shape) -> JPH_ShapeSubType #foreign joltc;
JPH_Shape_GetUserData :: (shape: *JPH_Shape) -> u64 #foreign joltc;
JPH_Shape_SetUserData :: (shape: *JPH_Shape, userData: u64) -> void #foreign joltc;
JPH_Shape_MustBeStatic :: (shape: *JPH_Shape) -> bool #foreign joltc;
JPH_Shape_GetCenterOfMass :: (shape: *JPH_Shape, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Shape_GetLocalBounds :: (shape: *JPH_Shape, result: *JPH_AABox) -> void #foreign joltc;
JPH_Shape_GetSubShapeIDBitsRecursive :: (shape: *JPH_Shape) -> u32 #foreign joltc;
JPH_Shape_GetWorldSpaceBounds :: (shape: *JPH_Shape, centerOfMassTransform: *JPH_RMatrix4x4, scale: *JPH_Vec3, result: *JPH_AABox) -> void #foreign joltc;
JPH_Shape_GetInnerRadius :: (shape: *JPH_Shape) -> float #foreign joltc;
JPH_Shape_GetMassProperties :: (shape: *JPH_Shape, result: *JPH_MassProperties) -> void #foreign joltc;
JPH_Shape_GetLeafShape :: (shape: *JPH_Shape, subShapeID: JPH_SubShapeID, remainder: *JPH_SubShapeID) -> *JPH_Shape #foreign joltc;
JPH_Shape_GetMaterial :: (shape: *JPH_Shape, subShapeID: JPH_SubShapeID) -> *JPH_PhysicsMaterial #foreign joltc;
JPH_Shape_GetSurfaceNormal :: (shape: *JPH_Shape, subShapeID: JPH_SubShapeID, localPosition: *JPH_Vec3, normal: *JPH_Vec3) -> void #foreign joltc;
JPH_Shape_GetSupportingFace :: (shape: *JPH_Shape, subShapeID: JPH_SubShapeID, direction: *JPH_Vec3, scale: *JPH_Vec3, centerOfMassTransform: *JPH_Matrix4x4, outVertices: *JPH_SupportingFace) -> void #foreign joltc;
JPH_Shape_GetVolume :: (shape: *JPH_Shape) -> float #foreign joltc;
JPH_Shape_IsValidScale :: (shape: *JPH_Shape, scale: *JPH_Vec3) -> bool #foreign joltc;
JPH_Shape_MakeScaleValid :: (shape: *JPH_Shape, scale: *JPH_Vec3, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Shape_ScaleShape :: (shape: *JPH_Shape, scale: *JPH_Vec3) -> *JPH_Shape #foreign joltc;
JPH_Shape_CastRay :: (shape: *JPH_Shape, origin: *JPH_Vec3, direction: *JPH_Vec3, hit: *JPH_RayCastResult) -> bool #foreign joltc;
JPH_Shape_CastRay2 :: (shape: *JPH_Shape, origin: *JPH_Vec3, direction: *JPH_Vec3, rayCastSettings: *JPH_RayCastSettings, collectorType: JPH_CollisionCollectorType, callback: JPH_CastRayResultCallback, userData: *void, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;
JPH_Shape_CollidePoint :: (shape: *JPH_Shape, point: *JPH_Vec3, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;
JPH_Shape_CollidePoint2 :: (shape: *JPH_Shape, point: *JPH_Vec3, collectorType: JPH_CollisionCollectorType, callback: JPH_CollidePointResultCallback, userData: *void, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;

/* JPH_ConvexShape */
JPH_ConvexShapeSettings_GetDensity :: (shape: *JPH_ConvexShapeSettings) -> float #foreign joltc;
JPH_ConvexShapeSettings_SetDensity :: (shape: *JPH_ConvexShapeSettings, value: float) -> void #foreign joltc;
JPH_ConvexShape_GetDensity :: (shape: *JPH_ConvexShape) -> float #foreign joltc;
JPH_ConvexShape_SetDensity :: (shape: *JPH_ConvexShape, inDensity: float) -> void #foreign joltc;

/* BoxShape */
JPH_BoxShapeSettings_Create :: (halfExtent: *JPH_Vec3, convexRadius: float) -> *JPH_BoxShapeSettings #foreign joltc;
JPH_BoxShapeSettings_CreateShape :: (settings: *JPH_BoxShapeSettings) -> *JPH_BoxShape #foreign joltc;

JPH_BoxShape_Create :: (halfExtent: *JPH_Vec3, convexRadius: float) -> *JPH_BoxShape #foreign joltc;
JPH_BoxShape_GetHalfExtent :: (shape: *JPH_BoxShape, halfExtent: *JPH_Vec3) -> void #foreign joltc;
JPH_BoxShape_GetConvexRadius :: (shape: *JPH_BoxShape) -> float #foreign joltc;

/* SphereShape */
JPH_SphereShapeSettings_Create :: (radius: float) -> *JPH_SphereShapeSettings #foreign joltc;
JPH_SphereShapeSettings_CreateShape :: (settings: *JPH_SphereShapeSettings) -> *JPH_SphereShape #foreign joltc;

JPH_SphereShapeSettings_GetRadius :: (settings: *JPH_SphereShapeSettings) -> float #foreign joltc;
JPH_SphereShapeSettings_SetRadius :: (settings: *JPH_SphereShapeSettings, radius: float) -> void #foreign joltc;
JPH_SphereShape_Create :: (radius: float) -> *JPH_SphereShape #foreign joltc;
JPH_SphereShape_GetRadius :: (shape: *JPH_SphereShape) -> float #foreign joltc;

/* PlaneShape */
JPH_PlaneShapeSettings_Create :: (plane: *JPH_Plane, material: *JPH_PhysicsMaterial, halfExtent: float) -> *JPH_PlaneShapeSettings #foreign joltc;
JPH_PlaneShapeSettings_CreateShape :: (settings: *JPH_PlaneShapeSettings) -> *JPH_PlaneShape #foreign joltc;
JPH_PlaneShape_Create :: (plane: *JPH_Plane, material: *JPH_PhysicsMaterial, halfExtent: float) -> *JPH_PlaneShape #foreign joltc;
JPH_PlaneShape_GetPlane :: (shape: *JPH_PlaneShape, result: *JPH_Plane) -> void #foreign joltc;
JPH_PlaneShape_GetHalfExtent :: (shape: *JPH_PlaneShape) -> float #foreign joltc;

/* TriangleShape */
JPH_TriangleShapeSettings_Create :: (v1: *JPH_Vec3, v2: *JPH_Vec3, v3: *JPH_Vec3, convexRadius: float) -> *JPH_TriangleShapeSettings #foreign joltc;
JPH_TriangleShapeSettings_CreateShape :: (settings: *JPH_TriangleShapeSettings) -> *JPH_TriangleShape #foreign joltc;

JPH_TriangleShape_Create :: (v1: *JPH_Vec3, v2: *JPH_Vec3, v3: *JPH_Vec3, convexRadius: float) -> *JPH_TriangleShape #foreign joltc;
JPH_TriangleShape_GetConvexRadius :: (shape: *JPH_TriangleShape) -> float #foreign joltc;
JPH_TriangleShape_GetVertex1 :: (shape: *JPH_TriangleShape, result: *JPH_Vec3) -> void #foreign joltc;
JPH_TriangleShape_GetVertex2 :: (shape: *JPH_TriangleShape, result: *JPH_Vec3) -> void #foreign joltc;
JPH_TriangleShape_GetVertex3 :: (shape: *JPH_TriangleShape, result: *JPH_Vec3) -> void #foreign joltc;

/* CapsuleShape */
JPH_CapsuleShapeSettings_Create :: (halfHeightOfCylinder: float, radius: float) -> *JPH_CapsuleShapeSettings #foreign joltc;
JPH_CapsuleShapeSettings_CreateShape :: (settings: *JPH_CapsuleShapeSettings) -> *JPH_CapsuleShape #foreign joltc;
JPH_CapsuleShape_Create :: (halfHeightOfCylinder: float, radius: float) -> *JPH_CapsuleShape #foreign joltc;
JPH_CapsuleShape_GetRadius :: (shape: *JPH_CapsuleShape) -> float #foreign joltc;
JPH_CapsuleShape_GetHalfHeightOfCylinder :: (shape: *JPH_CapsuleShape) -> float #foreign joltc;

/* CylinderShape */
JPH_CylinderShapeSettings_Create :: (halfHeight: float, radius: float, convexRadius: float) -> *JPH_CylinderShapeSettings #foreign joltc;
JPH_CylinderShapeSettings_CreateShape :: (settings: *JPH_CylinderShapeSettings) -> *JPH_CylinderShape #foreign joltc;

JPH_CylinderShape_Create :: (halfHeight: float, radius: float) -> *JPH_CylinderShape #foreign joltc;
JPH_CylinderShape_GetRadius :: (shape: *JPH_CylinderShape) -> float #foreign joltc;
JPH_CylinderShape_GetHalfHeight :: (shape: *JPH_CylinderShape) -> float #foreign joltc;

/* TaperedCylinderShape */
JPH_TaperedCylinderShapeSettings_Create :: (halfHeightOfTaperedCylinder: float, topRadius: float, bottomRadius: float, convexRadius: float, material: *JPH_PhysicsMaterial) -> *JPH_TaperedCylinderShapeSettings #foreign joltc;
JPH_TaperedCylinderShapeSettings_CreateShape :: (settings: *JPH_TaperedCylinderShapeSettings) -> *JPH_TaperedCylinderShape #foreign joltc;
JPH_TaperedCylinderShape_GetTopRadius :: (shape: *JPH_TaperedCylinderShape) -> float #foreign joltc;
JPH_TaperedCylinderShape_GetBottomRadius :: (shape: *JPH_TaperedCylinderShape) -> float #foreign joltc;
JPH_TaperedCylinderShape_GetConvexRadius :: (shape: *JPH_TaperedCylinderShape) -> float #foreign joltc;
JPH_TaperedCylinderShape_GetHalfHeight :: (shape: *JPH_TaperedCylinderShape) -> float #foreign joltc;

/* ConvexHullShape */
JPH_ConvexHullShapeSettings_Create :: (points: *JPH_Vec3, pointsCount: u32, maxConvexRadius: float) -> *JPH_ConvexHullShapeSettings #foreign joltc;
JPH_ConvexHullShapeSettings_CreateShape :: (settings: *JPH_ConvexHullShapeSettings) -> *JPH_ConvexHullShape #foreign joltc;
JPH_ConvexHullShape_GetNumPoints :: (shape: *JPH_ConvexHullShape) -> u32 #foreign joltc;
JPH_ConvexHullShape_GetPoint :: (shape: *JPH_ConvexHullShape, index: u32, result: *JPH_Vec3) -> void #foreign joltc;
JPH_ConvexHullShape_GetNumFaces :: (shape: *JPH_ConvexHullShape) -> u32 #foreign joltc;
JPH_ConvexHullShape_GetNumVerticesInFace :: (shape: *JPH_ConvexHullShape, faceIndex: u32) -> u32 #foreign joltc;
JPH_ConvexHullShape_GetFaceVertices :: (shape: *JPH_ConvexHullShape, faceIndex: u32, maxVertices: u32, vertices: *u32) -> u32 #foreign joltc;

/* MeshShape */
JPH_MeshShapeSettings_Create :: (triangles: *JPH_Triangle, triangleCount: u32) -> *JPH_MeshShapeSettings #foreign joltc;
JPH_MeshShapeSettings_Create2 :: (vertices: *JPH_Vec3, verticesCount: u32, triangles: *JPH_IndexedTriangle, triangleCount: u32) -> *JPH_MeshShapeSettings #foreign joltc;
JPH_MeshShapeSettings_GetMaxTrianglesPerLeaf :: (settings: *JPH_MeshShapeSettings) -> u32 #foreign joltc;
JPH_MeshShapeSettings_SetMaxTrianglesPerLeaf :: (settings: *JPH_MeshShapeSettings, value: u32) -> void #foreign joltc;
JPH_MeshShapeSettings_GetActiveEdgeCosThresholdAngle :: (settings: *JPH_MeshShapeSettings) -> float #foreign joltc;
JPH_MeshShapeSettings_SetActiveEdgeCosThresholdAngle :: (settings: *JPH_MeshShapeSettings, value: float) -> void #foreign joltc;
JPH_MeshShapeSettings_GetPerTriangleUserData :: (settings: *JPH_MeshShapeSettings) -> bool #foreign joltc;
JPH_MeshShapeSettings_SetPerTriangleUserData :: (settings: *JPH_MeshShapeSettings, value: bool) -> void #foreign joltc;
JPH_MeshShapeSettings_GetBuildQuality :: (settings: *JPH_MeshShapeSettings) -> JPH_Mesh_Shape_BuildQuality #foreign joltc;
JPH_MeshShapeSettings_SetBuildQuality :: (settings: *JPH_MeshShapeSettings, value: JPH_Mesh_Shape_BuildQuality) -> void #foreign joltc;

JPH_MeshShapeSettings_Sanitize :: (settings: *JPH_MeshShapeSettings) -> void #foreign joltc;
JPH_MeshShapeSettings_CreateShape :: (settings: *JPH_MeshShapeSettings) -> *JPH_MeshShape #foreign joltc;
JPH_MeshShape_GetTriangleUserData :: (shape: *JPH_MeshShape, id: JPH_SubShapeID) -> u32 #foreign joltc;

/* HeightFieldShape */
JPH_HeightFieldShapeSettings_Create :: (samples: *float, offset: *JPH_Vec3, scale: *JPH_Vec3, sampleCount: u32) -> *JPH_HeightFieldShapeSettings #foreign joltc;
JPH_HeightFieldShapeSettings_CreateShape :: (settings: *JPH_HeightFieldShapeSettings) -> *JPH_HeightFieldShape #foreign joltc;
JPH_HeightFieldShapeSettings_DetermineMinAndMaxSample :: (settings: *JPH_HeightFieldShapeSettings, pOutMinValue: *float, pOutMaxValue: *float, pOutQuantizationScale: *float) -> void #foreign joltc;
JPH_HeightFieldShapeSettings_CalculateBitsPerSampleForError :: (settings: *JPH_HeightFieldShapeSettings, maxError: float) -> u32 #foreign joltc;

JPH_HeightFieldShape_GetSampleCount :: (shape: *JPH_HeightFieldShape) -> u32 #foreign joltc;
JPH_HeightFieldShape_GetBlockSize :: (shape: *JPH_HeightFieldShape) -> u32 #foreign joltc;
JPH_HeightFieldShape_GetMaterial :: (shape: *JPH_HeightFieldShape, x: u32, y: u32) -> *JPH_PhysicsMaterial #foreign joltc;
JPH_HeightFieldShape_GetPosition :: (shape: *JPH_HeightFieldShape, x: u32, y: u32, result: *JPH_Vec3) -> void #foreign joltc;
JPH_HeightFieldShape_IsNoCollision :: (shape: *JPH_HeightFieldShape, x: u32, y: u32) -> bool #foreign joltc;
JPH_HeightFieldShape_ProjectOntoSurface :: (shape: *JPH_HeightFieldShape, localPosition: *JPH_Vec3, outSurfacePosition: *JPH_Vec3, outSubShapeID: *JPH_SubShapeID) -> bool #foreign joltc;
JPH_HeightFieldShape_GetMinHeightValue :: (shape: *JPH_HeightFieldShape) -> float #foreign joltc;
JPH_HeightFieldShape_GetMaxHeightValue :: (shape: *JPH_HeightFieldShape) -> float #foreign joltc;

/* TaperedCapsuleShape */
JPH_TaperedCapsuleShapeSettings_Create :: (halfHeightOfTaperedCylinder: float, topRadius: float, bottomRadius: float) -> *JPH_TaperedCapsuleShapeSettings #foreign joltc;
JPH_TaperedCapsuleShapeSettings_CreateShape :: (settings: *JPH_TaperedCapsuleShapeSettings) -> *JPH_TaperedCapsuleShape #foreign joltc;

JPH_TaperedCapsuleShape_GetTopRadius :: (shape: *JPH_TaperedCapsuleShape) -> float #foreign joltc;
JPH_TaperedCapsuleShape_GetBottomRadius :: (shape: *JPH_TaperedCapsuleShape) -> float #foreign joltc;
JPH_TaperedCapsuleShape_GetHalfHeight :: (shape: *JPH_TaperedCapsuleShape) -> float #foreign joltc;

/* CompoundShape */
JPH_CompoundShapeSettings_AddShape :: (settings: *JPH_CompoundShapeSettings, position: *JPH_Vec3, rotation: *JPH_Quat, shapeSettings: *JPH_ShapeSettings, userData: u32) -> void #foreign joltc;
JPH_CompoundShapeSettings_AddShape2 :: (settings: *JPH_CompoundShapeSettings, position: *JPH_Vec3, rotation: *JPH_Quat, shape: *JPH_Shape, userData: u32) -> void #foreign joltc;
JPH_CompoundShape_GetNumSubShapes :: (shape: *JPH_CompoundShape) -> u32 #foreign joltc;
JPH_CompoundShape_GetSubShape :: (shape: *JPH_CompoundShape, index: u32, subShape: **JPH_Shape, positionCOM: *JPH_Vec3, rotation: *JPH_Quat, userData: *u32) -> void #foreign joltc;
JPH_CompoundShape_GetSubShapeIndexFromID :: (shape: *JPH_CompoundShape, id: JPH_SubShapeID, remainder: *JPH_SubShapeID) -> u32 #foreign joltc;

/* StaticCompoundShape */
JPH_StaticCompoundShapeSettings_Create :: () -> *JPH_StaticCompoundShapeSettings #foreign joltc;
JPH_StaticCompoundShape_Create :: (settings: *JPH_StaticCompoundShapeSettings) -> *JPH_StaticCompoundShape #foreign joltc;

/* MutableCompoundShape */
JPH_MutableCompoundShapeSettings_Create :: () -> *JPH_MutableCompoundShapeSettings #foreign joltc;
JPH_MutableCompoundShape_Create :: (settings: *JPH_MutableCompoundShapeSettings) -> *JPH_MutableCompoundShape #foreign joltc;

JPH_MutableCompoundShape_AddShape :: (shape: *JPH_MutableCompoundShape, position: *JPH_Vec3, rotation: *JPH_Quat, child: *JPH_Shape, userData: u32, index: u32) -> u32 #foreign joltc;
JPH_MutableCompoundShape_RemoveShape :: (shape: *JPH_MutableCompoundShape, index: u32) -> void #foreign joltc;
JPH_MutableCompoundShape_ModifyShape :: (shape: *JPH_MutableCompoundShape, index: u32, position: *JPH_Vec3, rotation: *JPH_Quat) -> void #foreign joltc;
JPH_MutableCompoundShape_ModifyShape2 :: (shape: *JPH_MutableCompoundShape, index: u32, position: *JPH_Vec3, rotation: *JPH_Quat, newShape: *JPH_Shape) -> void #foreign joltc;
JPH_MutableCompoundShape_AdjustCenterOfMass :: (shape: *JPH_MutableCompoundShape) -> void #foreign joltc;

/* DecoratedShape */
JPH_DecoratedShape_GetInnerShape :: (shape: *JPH_DecoratedShape) -> *JPH_Shape #foreign joltc;

/* RotatedTranslatedShape */
JPH_RotatedTranslatedShapeSettings_Create :: (position: *JPH_Vec3, rotation: *JPH_Quat, shapeSettings: *JPH_ShapeSettings) -> *JPH_RotatedTranslatedShapeSettings #foreign joltc;
JPH_RotatedTranslatedShapeSettings_Create2 :: (position: *JPH_Vec3, rotation: *JPH_Quat, shape: *JPH_Shape) -> *JPH_RotatedTranslatedShapeSettings #foreign joltc;
JPH_RotatedTranslatedShapeSettings_CreateShape :: (settings: *JPH_RotatedTranslatedShapeSettings) -> *JPH_RotatedTranslatedShape #foreign joltc;
JPH_RotatedTranslatedShape_Create :: (position: *JPH_Vec3, rotation: *JPH_Quat, shape: *JPH_Shape) -> *JPH_RotatedTranslatedShape #foreign joltc;
JPH_RotatedTranslatedShape_GetPosition :: (shape: *JPH_RotatedTranslatedShape, position: *JPH_Vec3) -> void #foreign joltc;
JPH_RotatedTranslatedShape_GetRotation :: (shape: *JPH_RotatedTranslatedShape, rotation: *JPH_Quat) -> void #foreign joltc;

/* ScaledShape */
JPH_ScaledShapeSettings_Create :: (shapeSettings: *JPH_ShapeSettings, scale: *JPH_Vec3) -> *JPH_ScaledShapeSettings #foreign joltc;
JPH_ScaledShapeSettings_Create2 :: (shape: *JPH_Shape, scale: *JPH_Vec3) -> *JPH_ScaledShapeSettings #foreign joltc;
JPH_ScaledShapeSettings_CreateShape :: (settings: *JPH_ScaledShapeSettings) -> *JPH_ScaledShape #foreign joltc;
JPH_ScaledShape_Create :: (shape: *JPH_Shape, scale: *JPH_Vec3) -> *JPH_ScaledShape #foreign joltc;
JPH_ScaledShape_GetScale :: (shape: *JPH_ScaledShape, result: *JPH_Vec3) -> void #foreign joltc;

/* OffsetCenterOfMassShape */
JPH_OffsetCenterOfMassShapeSettings_Create :: (offset: *JPH_Vec3, shapeSettings: *JPH_ShapeSettings) -> *JPH_OffsetCenterOfMassShapeSettings #foreign joltc;
JPH_OffsetCenterOfMassShapeSettings_Create2 :: (offset: *JPH_Vec3, shape: *JPH_Shape) -> *JPH_OffsetCenterOfMassShapeSettings #foreign joltc;
JPH_OffsetCenterOfMassShapeSettings_CreateShape :: (settings: *JPH_OffsetCenterOfMassShapeSettings) -> *JPH_OffsetCenterOfMassShape #foreign joltc;

JPH_OffsetCenterOfMassShape_Create :: (offset: *JPH_Vec3, shape: *JPH_Shape) -> *JPH_OffsetCenterOfMassShape #foreign joltc;
JPH_OffsetCenterOfMassShape_GetOffset :: (shape: *JPH_OffsetCenterOfMassShape, result: *JPH_Vec3) -> void #foreign joltc;

/* EmptyShape */
JPH_EmptyShapeSettings_Create :: (centerOfMass: *JPH_Vec3) -> *JPH_EmptyShapeSettings #foreign joltc;
JPH_EmptyShapeSettings_CreateShape :: (settings: *JPH_EmptyShapeSettings) -> *JPH_EmptyShape #foreign joltc;

/* JPH_BodyCreationSettings */
JPH_BodyCreationSettings_Create :: () -> *JPH_BodyCreationSettings #foreign joltc;
JPH_BodyCreationSettings_Create2 :: (settings: *JPH_ShapeSettings, position: *JPH_RVec3, rotation: *JPH_Quat, motionType: JPH_MotionType, objectLayer: JPH_ObjectLayer) -> *JPH_BodyCreationSettings #foreign joltc;

JPH_BodyCreationSettings_Create3 :: (shape: *JPH_Shape, position: *JPH_RVec3, rotation: *JPH_Quat, motionType: JPH_MotionType, objectLayer: JPH_ObjectLayer) -> *JPH_BodyCreationSettings #foreign joltc;

JPH_BodyCreationSettings_Destroy :: (settings: *JPH_BodyCreationSettings) -> void #foreign joltc;

JPH_BodyCreationSettings_GetPosition :: (settings: *JPH_BodyCreationSettings, result: *JPH_RVec3) -> void #foreign joltc;
JPH_BodyCreationSettings_SetPosition :: (settings: *JPH_BodyCreationSettings, value: *JPH_RVec3) -> void #foreign joltc;

JPH_BodyCreationSettings_GetRotation :: (settings: *JPH_BodyCreationSettings, result: *JPH_Quat) -> void #foreign joltc;
JPH_BodyCreationSettings_SetRotation :: (settings: *JPH_BodyCreationSettings, value: *JPH_Quat) -> void #foreign joltc;

JPH_BodyCreationSettings_GetLinearVelocity :: (settings: *JPH_BodyCreationSettings, velocity: *JPH_Vec3) -> void #foreign joltc;
JPH_BodyCreationSettings_SetLinearVelocity :: (settings: *JPH_BodyCreationSettings, velocity: *JPH_Vec3) -> void #foreign joltc;

JPH_BodyCreationSettings_GetAngularVelocity :: (settings: *JPH_BodyCreationSettings, velocity: *JPH_Vec3) -> void #foreign joltc;
JPH_BodyCreationSettings_SetAngularVelocity :: (settings: *JPH_BodyCreationSettings, velocity: *JPH_Vec3) -> void #foreign joltc;

JPH_BodyCreationSettings_GetUserData :: (settings: *JPH_BodyCreationSettings) -> u64 #foreign joltc;
JPH_BodyCreationSettings_SetUserData :: (settings: *JPH_BodyCreationSettings, value: u64) -> void #foreign joltc;

JPH_BodyCreationSettings_GetObjectLayer :: (settings: *JPH_BodyCreationSettings) -> JPH_ObjectLayer #foreign joltc;
JPH_BodyCreationSettings_SetObjectLayer :: (settings: *JPH_BodyCreationSettings, value: JPH_ObjectLayer) -> void #foreign joltc;

JPH_BodyCreationSettings_GetCollissionGroup :: (settings: *JPH_BodyCreationSettings, result: *JPH_CollisionGroup) -> void #foreign joltc;
JPH_BodyCreationSettings_SetCollissionGroup :: (settings: *JPH_BodyCreationSettings, value: *JPH_CollisionGroup) -> void #foreign joltc;

JPH_BodyCreationSettings_GetMotionType :: (settings: *JPH_BodyCreationSettings) -> JPH_MotionType #foreign joltc;
JPH_BodyCreationSettings_SetMotionType :: (settings: *JPH_BodyCreationSettings, value: JPH_MotionType) -> void #foreign joltc;

JPH_BodyCreationSettings_GetAllowedDOFs :: (settings: *JPH_BodyCreationSettings) -> JPH_AllowedDOFs #foreign joltc;
JPH_BodyCreationSettings_SetAllowedDOFs :: (settings: *JPH_BodyCreationSettings, value: JPH_AllowedDOFs) -> void #foreign joltc;

JPH_BodyCreationSettings_GetAllowDynamicOrKinematic :: (settings: *JPH_BodyCreationSettings) -> bool #foreign joltc;
JPH_BodyCreationSettings_SetAllowDynamicOrKinematic :: (settings: *JPH_BodyCreationSettings, value: bool) -> void #foreign joltc;

JPH_BodyCreationSettings_GetIsSensor :: (settings: *JPH_BodyCreationSettings) -> bool #foreign joltc;
JPH_BodyCreationSettings_SetIsSensor :: (settings: *JPH_BodyCreationSettings, value: bool) -> void #foreign joltc;

JPH_BodyCreationSettings_GetCollideKinematicVsNonDynamic :: (settings: *JPH_BodyCreationSettings) -> bool #foreign joltc;
JPH_BodyCreationSettings_SetCollideKinematicVsNonDynamic :: (settings: *JPH_BodyCreationSettings, value: bool) -> void #foreign joltc;

JPH_BodyCreationSettings_GetUseManifoldReduction :: (settings: *JPH_BodyCreationSettings) -> bool #foreign joltc;
JPH_BodyCreationSettings_SetUseManifoldReduction :: (settings: *JPH_BodyCreationSettings, value: bool) -> void #foreign joltc;

JPH_BodyCreationSettings_GetApplyGyroscopicForce :: (settings: *JPH_BodyCreationSettings) -> bool #foreign joltc;
JPH_BodyCreationSettings_SetApplyGyroscopicForce :: (settings: *JPH_BodyCreationSettings, value: bool) -> void #foreign joltc;

JPH_BodyCreationSettings_GetMotionQuality :: (settings: *JPH_BodyCreationSettings) -> JPH_MotionQuality #foreign joltc;
JPH_BodyCreationSettings_SetMotionQuality :: (settings: *JPH_BodyCreationSettings, value: JPH_MotionQuality) -> void #foreign joltc;

JPH_BodyCreationSettings_GetEnhancedInternalEdgeRemoval :: (settings: *JPH_BodyCreationSettings) -> bool #foreign joltc;
JPH_BodyCreationSettings_SetEnhancedInternalEdgeRemoval :: (settings: *JPH_BodyCreationSettings, value: bool) -> void #foreign joltc;

JPH_BodyCreationSettings_GetAllowSleeping :: (settings: *JPH_BodyCreationSettings) -> bool #foreign joltc;
JPH_BodyCreationSettings_SetAllowSleeping :: (settings: *JPH_BodyCreationSettings, value: bool) -> void #foreign joltc;

JPH_BodyCreationSettings_GetFriction :: (settings: *JPH_BodyCreationSettings) -> float #foreign joltc;
JPH_BodyCreationSettings_SetFriction :: (settings: *JPH_BodyCreationSettings, value: float) -> void #foreign joltc;

JPH_BodyCreationSettings_GetRestitution :: (settings: *JPH_BodyCreationSettings) -> float #foreign joltc;
JPH_BodyCreationSettings_SetRestitution :: (settings: *JPH_BodyCreationSettings, value: float) -> void #foreign joltc;

JPH_BodyCreationSettings_GetLinearDamping :: (settings: *JPH_BodyCreationSettings) -> float #foreign joltc;
JPH_BodyCreationSettings_SetLinearDamping :: (settings: *JPH_BodyCreationSettings, value: float) -> void #foreign joltc;

JPH_BodyCreationSettings_GetAngularDamping :: (settings: *JPH_BodyCreationSettings) -> float #foreign joltc;
JPH_BodyCreationSettings_SetAngularDamping :: (settings: *JPH_BodyCreationSettings, value: float) -> void #foreign joltc;

JPH_BodyCreationSettings_GetMaxLinearVelocity :: (settings: *JPH_BodyCreationSettings) -> float #foreign joltc;
JPH_BodyCreationSettings_SetMaxLinearVelocity :: (settings: *JPH_BodyCreationSettings, value: float) -> void #foreign joltc;

JPH_BodyCreationSettings_GetMaxAngularVelocity :: (settings: *JPH_BodyCreationSettings) -> float #foreign joltc;
JPH_BodyCreationSettings_SetMaxAngularVelocity :: (settings: *JPH_BodyCreationSettings, value: float) -> void #foreign joltc;

JPH_BodyCreationSettings_GetGravityFactor :: (settings: *JPH_BodyCreationSettings) -> float #foreign joltc;
JPH_BodyCreationSettings_SetGravityFactor :: (settings: *JPH_BodyCreationSettings, value: float) -> void #foreign joltc;

JPH_BodyCreationSettings_GetNumVelocityStepsOverride :: (settings: *JPH_BodyCreationSettings) -> u32 #foreign joltc;
JPH_BodyCreationSettings_SetNumVelocityStepsOverride :: (settings: *JPH_BodyCreationSettings, value: u32) -> void #foreign joltc;

JPH_BodyCreationSettings_GetNumPositionStepsOverride :: (settings: *JPH_BodyCreationSettings) -> u32 #foreign joltc;
JPH_BodyCreationSettings_SetNumPositionStepsOverride :: (settings: *JPH_BodyCreationSettings, value: u32) -> void #foreign joltc;

JPH_BodyCreationSettings_GetOverrideMassProperties :: (settings: *JPH_BodyCreationSettings) -> JPH_OverrideMassProperties #foreign joltc;
JPH_BodyCreationSettings_SetOverrideMassProperties :: (settings: *JPH_BodyCreationSettings, value: JPH_OverrideMassProperties) -> void #foreign joltc;

JPH_BodyCreationSettings_GetInertiaMultiplier :: (settings: *JPH_BodyCreationSettings) -> float #foreign joltc;
JPH_BodyCreationSettings_SetInertiaMultiplier :: (settings: *JPH_BodyCreationSettings, value: float) -> void #foreign joltc;

JPH_BodyCreationSettings_GetMassPropertiesOverride :: (settings: *JPH_BodyCreationSettings, result: *JPH_MassProperties) -> void #foreign joltc;
JPH_BodyCreationSettings_SetMassPropertiesOverride :: (settings: *JPH_BodyCreationSettings, massProperties: *JPH_MassProperties) -> void #foreign joltc;

/* JPH_SoftBodyCreationSettings */
JPH_SoftBodyCreationSettings_Create :: () -> *JPH_SoftBodyCreationSettings #foreign joltc;
JPH_SoftBodyCreationSettings_Destroy :: (settings: *JPH_SoftBodyCreationSettings) -> void #foreign joltc;

/* JPH_Constraint */
JPH_Constraint_Destroy :: (constraint: *JPH_Constraint) -> void #foreign joltc;
JPH_Constraint_GetType :: (constraint: *JPH_Constraint) -> JPH_ConstraintType #foreign joltc;
JPH_Constraint_GetSubType :: (constraint: *JPH_Constraint) -> JPH_ConstraintSubType #foreign joltc;
JPH_Constraint_GetConstraintPriority :: (constraint: *JPH_Constraint) -> u32 #foreign joltc;
JPH_Constraint_SetConstraintPriority :: (constraint: *JPH_Constraint, priority: u32) -> void #foreign joltc;
JPH_Constraint_GetNumVelocityStepsOverride :: (constraint: *JPH_Constraint) -> u32 #foreign joltc;
JPH_Constraint_SetNumVelocityStepsOverride :: (constraint: *JPH_Constraint, value: u32) -> void #foreign joltc;
JPH_Constraint_GetNumPositionStepsOverride :: (constraint: *JPH_Constraint) -> u32 #foreign joltc;
JPH_Constraint_SetNumPositionStepsOverride :: (constraint: *JPH_Constraint, value: u32) -> void #foreign joltc;
JPH_Constraint_GetEnabled :: (constraint: *JPH_Constraint) -> bool #foreign joltc;
JPH_Constraint_SetEnabled :: (constraint: *JPH_Constraint, enabled: bool) -> void #foreign joltc;
JPH_Constraint_GetUserData :: (constraint: *JPH_Constraint) -> u64 #foreign joltc;
JPH_Constraint_SetUserData :: (constraint: *JPH_Constraint, userData: u64) -> void #foreign joltc;
JPH_Constraint_NotifyShapeChanged :: (constraint: *JPH_Constraint, bodyID: JPH_BodyID, deltaCOM: *JPH_Vec3) -> void #foreign joltc;
JPH_Constraint_ResetWarmStart :: (constraint: *JPH_Constraint) -> void #foreign joltc;
JPH_Constraint_IsActive :: (constraint: *JPH_Constraint) -> bool #foreign joltc;
JPH_Constraint_SetupVelocityConstraint :: (constraint: *JPH_Constraint, deltaTime: float) -> void #foreign joltc;
JPH_Constraint_WarmStartVelocityConstraint :: (constraint: *JPH_Constraint, warmStartImpulseRatio: float) -> void #foreign joltc;
JPH_Constraint_SolveVelocityConstraint :: (constraint: *JPH_Constraint, deltaTime: float) -> bool #foreign joltc;
JPH_Constraint_SolvePositionConstraint :: (constraint: *JPH_Constraint, deltaTime: float, baumgarte: float) -> bool #foreign joltc;

/* JPH_TwoBodyConstraint */
JPH_TwoBodyConstraint_GetBody1 :: (constraint: *JPH_TwoBodyConstraint) -> *JPH_Body #foreign joltc;
JPH_TwoBodyConstraint_GetBody2 :: (constraint: *JPH_TwoBodyConstraint) -> *JPH_Body #foreign joltc;
JPH_TwoBodyConstraint_GetConstraintToBody1Matrix :: (constraint: *JPH_TwoBodyConstraint, result: *JPH_Matrix4x4) -> void #foreign joltc;
JPH_TwoBodyConstraint_GetConstraintToBody2Matrix :: (constraint: *JPH_TwoBodyConstraint, result: *JPH_Matrix4x4) -> void #foreign joltc;

/* JPH_FixedConstraint */
JPH_FixedConstraintSettings_Init :: (settings: *JPH_FixedConstraintSettings) -> void #foreign joltc;
JPH_FixedConstraint_Create :: (settings: *JPH_FixedConstraintSettings, body1: *JPH_Body, body2: *JPH_Body) -> *JPH_FixedConstraint #foreign joltc;
JPH_FixedConstraint_GetSettings :: (constraint: *JPH_FixedConstraint, settings: *JPH_FixedConstraintSettings) -> void #foreign joltc;
JPH_FixedConstraint_GetTotalLambdaPosition :: (constraint: *JPH_FixedConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_FixedConstraint_GetTotalLambdaRotation :: (constraint: *JPH_FixedConstraint, result: *JPH_Vec3) -> void #foreign joltc;

/* JPH_DistanceConstraint */
JPH_DistanceConstraintSettings_Init :: (settings: *JPH_DistanceConstraintSettings) -> void #foreign joltc;
JPH_DistanceConstraint_Create :: (settings: *JPH_DistanceConstraintSettings, body1: *JPH_Body, body2: *JPH_Body) -> *JPH_DistanceConstraint #foreign joltc;
JPH_DistanceConstraint_GetSettings :: (constraint: *JPH_DistanceConstraint, settings: *JPH_DistanceConstraintSettings) -> void #foreign joltc;
JPH_DistanceConstraint_SetDistance :: (constraint: *JPH_DistanceConstraint, minDistance: float, maxDistance: float) -> void #foreign joltc;
JPH_DistanceConstraint_GetMinDistance :: (constraint: *JPH_DistanceConstraint) -> float #foreign joltc;
JPH_DistanceConstraint_GetMaxDistance :: (constraint: *JPH_DistanceConstraint) -> float #foreign joltc;
JPH_DistanceConstraint_GetLimitsSpringSettings :: (constraint: *JPH_DistanceConstraint, result: *JPH_SpringSettings) -> void #foreign joltc;
JPH_DistanceConstraint_SetLimitsSpringSettings :: (constraint: *JPH_DistanceConstraint, settings: *JPH_SpringSettings) -> void #foreign joltc;
JPH_DistanceConstraint_GetTotalLambdaPosition :: (constraint: *JPH_DistanceConstraint) -> float #foreign joltc;

/* JPH_PointConstraint */
JPH_PointConstraintSettings_Init :: (settings: *JPH_PointConstraintSettings) -> void #foreign joltc;
JPH_PointConstraint_Create :: (settings: *JPH_PointConstraintSettings, body1: *JPH_Body, body2: *JPH_Body) -> *JPH_PointConstraint #foreign joltc;
JPH_PointConstraint_GetSettings :: (constraint: *JPH_PointConstraint, settings: *JPH_PointConstraintSettings) -> void #foreign joltc;
JPH_PointConstraint_SetPoint1 :: (constraint: *JPH_PointConstraint, space: JPH_ConstraintSpace, value: *JPH_RVec3) -> void #foreign joltc;
JPH_PointConstraint_SetPoint2 :: (constraint: *JPH_PointConstraint, space: JPH_ConstraintSpace, value: *JPH_RVec3) -> void #foreign joltc;
JPH_PointConstraint_GetLocalSpacePoint1 :: (constraint: *JPH_PointConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_PointConstraint_GetLocalSpacePoint2 :: (constraint: *JPH_PointConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_PointConstraint_GetTotalLambdaPosition :: (constraint: *JPH_PointConstraint, result: *JPH_Vec3) -> void #foreign joltc;

/* JPH_HingeConstraint */
JPH_HingeConstraintSettings_Init :: (settings: *JPH_HingeConstraintSettings) -> void #foreign joltc;
JPH_HingeConstraint_Create :: (settings: *JPH_HingeConstraintSettings, body1: *JPH_Body, body2: *JPH_Body) -> *JPH_HingeConstraint #foreign joltc;
JPH_HingeConstraint_GetSettings :: (constraint: *JPH_HingeConstraint, settings: *JPH_HingeConstraintSettings) -> void #foreign joltc;
JPH_HingeConstraint_GetLocalSpacePoint1 :: (constraint: *JPH_HingeConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_HingeConstraint_GetLocalSpacePoint2 :: (constraint: *JPH_HingeConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_HingeConstraint_GetLocalSpaceHingeAxis1 :: (constraint: *JPH_HingeConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_HingeConstraint_GetLocalSpaceHingeAxis2 :: (constraint: *JPH_HingeConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_HingeConstraint_GetLocalSpaceNormalAxis1 :: (constraint: *JPH_HingeConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_HingeConstraint_GetLocalSpaceNormalAxis2 :: (constraint: *JPH_HingeConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_HingeConstraint_GetCurrentAngle :: (constraint: *JPH_HingeConstraint) -> float #foreign joltc;
JPH_HingeConstraint_SetMaxFrictionTorque :: (constraint: *JPH_HingeConstraint, frictionTorque: float) -> void #foreign joltc;
JPH_HingeConstraint_GetMaxFrictionTorque :: (constraint: *JPH_HingeConstraint) -> float #foreign joltc;
JPH_HingeConstraint_SetMotorSettings :: (constraint: *JPH_HingeConstraint, settings: *JPH_MotorSettings) -> void #foreign joltc;
JPH_HingeConstraint_GetMotorSettings :: (constraint: *JPH_HingeConstraint, result: *JPH_MotorSettings) -> void #foreign joltc;
JPH_HingeConstraint_SetMotorState :: (constraint: *JPH_HingeConstraint, state: JPH_MotorState) -> void #foreign joltc;
JPH_HingeConstraint_GetMotorState :: (constraint: *JPH_HingeConstraint) -> JPH_MotorState #foreign joltc;
JPH_HingeConstraint_SetTargetAngularVelocity :: (constraint: *JPH_HingeConstraint, angularVelocity: float) -> void #foreign joltc;
JPH_HingeConstraint_GetTargetAngularVelocity :: (constraint: *JPH_HingeConstraint) -> float #foreign joltc;
JPH_HingeConstraint_SetTargetAngle :: (constraint: *JPH_HingeConstraint, angle: float) -> void #foreign joltc;
JPH_HingeConstraint_GetTargetAngle :: (constraint: *JPH_HingeConstraint) -> float #foreign joltc;
JPH_HingeConstraint_SetLimits :: (constraint: *JPH_HingeConstraint, inLimitsMin: float, inLimitsMax: float) -> void #foreign joltc;
JPH_HingeConstraint_GetLimitsMin :: (constraint: *JPH_HingeConstraint) -> float #foreign joltc;
JPH_HingeConstraint_GetLimitsMax :: (constraint: *JPH_HingeConstraint) -> float #foreign joltc;
JPH_HingeConstraint_HasLimits :: (constraint: *JPH_HingeConstraint) -> bool #foreign joltc;
JPH_HingeConstraint_GetLimitsSpringSettings :: (constraint: *JPH_HingeConstraint, result: *JPH_SpringSettings) -> void #foreign joltc;
JPH_HingeConstraint_SetLimitsSpringSettings :: (constraint: *JPH_HingeConstraint, settings: *JPH_SpringSettings) -> void #foreign joltc;
JPH_HingeConstraint_GetTotalLambdaPosition :: (constraint: *JPH_HingeConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_HingeConstraint_GetTotalLambdaRotation :: (constraint: *JPH_HingeConstraint, rotation: *[2] float) -> void #foreign joltc;
JPH_HingeConstraint_GetTotalLambdaRotationLimits :: (constraint: *JPH_HingeConstraint) -> float #foreign joltc;
JPH_HingeConstraint_GetTotalLambdaMotor :: (constraint: *JPH_HingeConstraint) -> float #foreign joltc;

/* JPH_SliderConstraint */
JPH_SliderConstraintSettings_Init :: (settings: *JPH_SliderConstraintSettings) -> void #foreign joltc;
JPH_SliderConstraintSettings_SetSliderAxis :: (settings: *JPH_SliderConstraintSettings, axis: *JPH_Vec3) -> void #foreign joltc;

JPH_SliderConstraint_Create :: (settings: *JPH_SliderConstraintSettings, body1: *JPH_Body, body2: *JPH_Body) -> *JPH_SliderConstraint #foreign joltc;
JPH_SliderConstraint_GetSettings :: (constraint: *JPH_SliderConstraint, settings: *JPH_SliderConstraintSettings) -> void #foreign joltc;
JPH_SliderConstraint_GetCurrentPosition :: (constraint: *JPH_SliderConstraint) -> float #foreign joltc;
JPH_SliderConstraint_SetMaxFrictionForce :: (constraint: *JPH_SliderConstraint, frictionForce: float) -> void #foreign joltc;
JPH_SliderConstraint_GetMaxFrictionForce :: (constraint: *JPH_SliderConstraint) -> float #foreign joltc;
JPH_SliderConstraint_SetMotorSettings :: (constraint: *JPH_SliderConstraint, settings: *JPH_MotorSettings) -> void #foreign joltc;
JPH_SliderConstraint_GetMotorSettings :: (constraint: *JPH_SliderConstraint, result: *JPH_MotorSettings) -> void #foreign joltc;
JPH_SliderConstraint_SetMotorState :: (constraint: *JPH_SliderConstraint, state: JPH_MotorState) -> void #foreign joltc;
JPH_SliderConstraint_GetMotorState :: (constraint: *JPH_SliderConstraint) -> JPH_MotorState #foreign joltc;
JPH_SliderConstraint_SetTargetVelocity :: (constraint: *JPH_SliderConstraint, velocity: float) -> void #foreign joltc;
JPH_SliderConstraint_GetTargetVelocity :: (constraint: *JPH_SliderConstraint) -> float #foreign joltc;
JPH_SliderConstraint_SetTargetPosition :: (constraint: *JPH_SliderConstraint, position: float) -> void #foreign joltc;
JPH_SliderConstraint_GetTargetPosition :: (constraint: *JPH_SliderConstraint) -> float #foreign joltc;
JPH_SliderConstraint_SetLimits :: (constraint: *JPH_SliderConstraint, inLimitsMin: float, inLimitsMax: float) -> void #foreign joltc;
JPH_SliderConstraint_GetLimitsMin :: (constraint: *JPH_SliderConstraint) -> float #foreign joltc;
JPH_SliderConstraint_GetLimitsMax :: (constraint: *JPH_SliderConstraint) -> float #foreign joltc;
JPH_SliderConstraint_HasLimits :: (constraint: *JPH_SliderConstraint) -> bool #foreign joltc;
JPH_SliderConstraint_GetLimitsSpringSettings :: (constraint: *JPH_SliderConstraint, result: *JPH_SpringSettings) -> void #foreign joltc;
JPH_SliderConstraint_SetLimitsSpringSettings :: (constraint: *JPH_SliderConstraint, settings: *JPH_SpringSettings) -> void #foreign joltc;
JPH_SliderConstraint_GetTotalLambdaPosition :: (constraint: *JPH_SliderConstraint, position: *[2] float) -> void #foreign joltc;
JPH_SliderConstraint_GetTotalLambdaPositionLimits :: (constraint: *JPH_SliderConstraint) -> float #foreign joltc;
JPH_SliderConstraint_GetTotalLambdaRotation :: (constraint: *JPH_SliderConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_SliderConstraint_GetTotalLambdaMotor :: (constraint: *JPH_SliderConstraint) -> float #foreign joltc;

/* JPH_ConeConstraint */
JPH_ConeConstraintSettings_Init :: (settings: *JPH_ConeConstraintSettings) -> void #foreign joltc;
JPH_ConeConstraint_Create :: (settings: *JPH_ConeConstraintSettings, body1: *JPH_Body, body2: *JPH_Body) -> *JPH_ConeConstraint #foreign joltc;
JPH_ConeConstraint_GetSettings :: (constraint: *JPH_ConeConstraint, settings: *JPH_ConeConstraintSettings) -> void #foreign joltc;
JPH_ConeConstraint_SetHalfConeAngle :: (constraint: *JPH_ConeConstraint, halfConeAngle: float) -> void #foreign joltc;
JPH_ConeConstraint_GetCosHalfConeAngle :: (constraint: *JPH_ConeConstraint) -> float #foreign joltc;
JPH_ConeConstraint_GetTotalLambdaPosition :: (constraint: *JPH_ConeConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_ConeConstraint_GetTotalLambdaRotation :: (constraint: *JPH_ConeConstraint) -> float #foreign joltc;

/* JPH_SwingTwistConstraint */
JPH_SwingTwistConstraintSettings_Init :: (settings: *JPH_SwingTwistConstraintSettings) -> void #foreign joltc;
JPH_SwingTwistConstraint_Create :: (settings: *JPH_SwingTwistConstraintSettings, body1: *JPH_Body, body2: *JPH_Body) -> *JPH_SwingTwistConstraint #foreign joltc;
JPH_SwingTwistConstraint_GetSettings :: (constraint: *JPH_SwingTwistConstraint, settings: *JPH_SwingTwistConstraintSettings) -> void #foreign joltc;
JPH_SwingTwistConstraint_GetNormalHalfConeAngle :: (constraint: *JPH_SwingTwistConstraint) -> float #foreign joltc;
JPH_SwingTwistConstraint_GetTotalLambdaPosition :: (constraint: *JPH_SwingTwistConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_SwingTwistConstraint_GetTotalLambdaTwist :: (constraint: *JPH_SwingTwistConstraint) -> float #foreign joltc;
JPH_SwingTwistConstraint_GetTotalLambdaSwingY :: (constraint: *JPH_SwingTwistConstraint) -> float #foreign joltc;
JPH_SwingTwistConstraint_GetTotalLambdaSwingZ :: (constraint: *JPH_SwingTwistConstraint) -> float #foreign joltc;
JPH_SwingTwistConstraint_GetTotalLambdaMotor :: (constraint: *JPH_SwingTwistConstraint, result: *JPH_Vec3) -> void #foreign joltc;

/* JPH_SixDOFConstraint */
JPH_SixDOFConstraintSettings_Init :: (settings: *JPH_SixDOFConstraintSettings) -> void #foreign joltc;
JPH_SixDOFConstraintSettings_MakeFreeAxis :: (settings: *JPH_SixDOFConstraintSettings, axis: JPH_SixDOFConstraintAxis) -> void #foreign joltc;
JPH_SixDOFConstraintSettings_IsFreeAxis :: (settings: *JPH_SixDOFConstraintSettings, axis: JPH_SixDOFConstraintAxis) -> bool #foreign joltc;
JPH_SixDOFConstraintSettings_MakeFixedAxis :: (settings: *JPH_SixDOFConstraintSettings, axis: JPH_SixDOFConstraintAxis) -> void #foreign joltc;
JPH_SixDOFConstraintSettings_IsFixedAxis :: (settings: *JPH_SixDOFConstraintSettings, axis: JPH_SixDOFConstraintAxis) -> bool #foreign joltc;
JPH_SixDOFConstraintSettings_SetLimitedAxis :: (settings: *JPH_SixDOFConstraintSettings, axis: JPH_SixDOFConstraintAxis, min: float, max: float) -> void #foreign joltc;

JPH_SixDOFConstraint_Create :: (settings: *JPH_SixDOFConstraintSettings, body1: *JPH_Body, body2: *JPH_Body) -> *JPH_SixDOFConstraint #foreign joltc;
JPH_SixDOFConstraint_GetSettings :: (constraint: *JPH_SixDOFConstraint, settings: *JPH_SixDOFConstraintSettings) -> void #foreign joltc;
JPH_SixDOFConstraint_GetLimitsMin :: (constraint: *JPH_SixDOFConstraint, axis: JPH_SixDOFConstraintAxis) -> float #foreign joltc;
JPH_SixDOFConstraint_GetLimitsMax :: (constraint: *JPH_SixDOFConstraint, axis: JPH_SixDOFConstraintAxis) -> float #foreign joltc;
JPH_SixDOFConstraint_GetTotalLambdaPosition :: (constraint: *JPH_SixDOFConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_SixDOFConstraint_GetTotalLambdaRotation :: (constraint: *JPH_SixDOFConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_SixDOFConstraint_GetTotalLambdaMotorTranslation :: (constraint: *JPH_SixDOFConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_SixDOFConstraint_GetTotalLambdaMotorRotation :: (constraint: *JPH_SixDOFConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_SixDOFConstraint_GetTranslationLimitsMin :: (constraint: *JPH_SixDOFConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_SixDOFConstraint_GetTranslationLimitsMax :: (constraint: *JPH_SixDOFConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_SixDOFConstraint_GetRotationLimitsMin :: (constraint: *JPH_SixDOFConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_SixDOFConstraint_GetRotationLimitsMax :: (constraint: *JPH_SixDOFConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_SixDOFConstraint_IsFixedAxis :: (constraint: *JPH_SixDOFConstraint, axis: JPH_SixDOFConstraintAxis) -> bool #foreign joltc;
JPH_SixDOFConstraint_IsFreeAxis :: (constraint: *JPH_SixDOFConstraint, axis: JPH_SixDOFConstraintAxis) -> bool #foreign joltc;
JPH_SixDOFConstraint_GetLimitsSpringSettings :: (constraint: *JPH_SixDOFConstraint, result: *JPH_SpringSettings, axis: JPH_SixDOFConstraintAxis) -> void #foreign joltc;
JPH_SixDOFConstraint_SetLimitsSpringSettings :: (constraint: *JPH_SixDOFConstraint, settings: *JPH_SpringSettings, axis: JPH_SixDOFConstraintAxis) -> void #foreign joltc;
JPH_SixDOFConstraint_SetMaxFriction :: (constraint: *JPH_SixDOFConstraint, axis: JPH_SixDOFConstraintAxis, inFriction: float) -> void #foreign joltc;
JPH_SixDOFConstraint_GetMaxFriction :: (constraint: *JPH_SixDOFConstraint, axis: JPH_SixDOFConstraintAxis) -> float #foreign joltc;
JPH_SixDOFConstraint_GetRotationInConstraintSpace :: (constraint: *JPH_SixDOFConstraint, result: *JPH_Quat) -> void #foreign joltc;
JPH_SixDOFConstraint_GetMotorSettings :: (constraint: *JPH_SixDOFConstraint, axis: JPH_SixDOFConstraintAxis, settings: *JPH_MotorSettings) -> void #foreign joltc;
JPH_SixDOFConstraint_SetMotorState :: (constraint: *JPH_SixDOFConstraint, axis: JPH_SixDOFConstraintAxis, state: JPH_MotorState) -> void #foreign joltc;
JPH_SixDOFConstraint_GetMotorState :: (constraint: *JPH_SixDOFConstraint, axis: JPH_SixDOFConstraintAxis) -> JPH_MotorState #foreign joltc;
JPH_SixDOFConstraint_SetTargetVelocityCS :: (constraint: *JPH_SixDOFConstraint, inVelocity: *JPH_Vec3) -> void #foreign joltc;
JPH_SixDOFConstraint_GetTargetVelocityCS :: (constraint: *JPH_SixDOFConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_SixDOFConstraint_SetTargetAngularVelocityCS :: (constraint: *JPH_SixDOFConstraint, inAngularVelocity: *JPH_Vec3) -> void #foreign joltc;
JPH_SixDOFConstraint_GetTargetAngularVelocityCS :: (constraint: *JPH_SixDOFConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_SixDOFConstraint_SetTargetPositionCS :: (constraint: *JPH_SixDOFConstraint, inPosition: *JPH_Vec3) -> void #foreign joltc;
JPH_SixDOFConstraint_GetTargetPositionCS :: (constraint: *JPH_SixDOFConstraint, result: *JPH_Vec3) -> void #foreign joltc;
JPH_SixDOFConstraint_SetTargetOrientationCS :: (constraint: *JPH_SixDOFConstraint, inOrientation: *JPH_Quat) -> void #foreign joltc;
JPH_SixDOFConstraint_GetTargetOrientationCS :: (constraint: *JPH_SixDOFConstraint, result: *JPH_Quat) -> void #foreign joltc;
JPH_SixDOFConstraint_SetTargetOrientationBS :: (constraint: *JPH_SixDOFConstraint, inOrientation: *JPH_Quat) -> void #foreign joltc;

/* JPH_GearConstraint */
JPH_GearConstraintSettings_Init :: (settings: *JPH_GearConstraintSettings) -> void #foreign joltc;
JPH_GearConstraint_Create :: (settings: *JPH_GearConstraintSettings, body1: *JPH_Body, body2: *JPH_Body) -> *JPH_GearConstraint #foreign joltc;
JPH_GearConstraint_GetSettings :: (constraint: *JPH_GearConstraint, settings: *JPH_GearConstraintSettings) -> void #foreign joltc;
JPH_GearConstraint_SetConstraints :: (constraint: *JPH_GearConstraint, gear1: *JPH_Constraint, gear2: *JPH_Constraint) -> void #foreign joltc;
JPH_GearConstraint_GetTotalLambda :: (constraint: *JPH_GearConstraint) -> float #foreign joltc;

/* BodyInterface */
JPH_BodyInterface_DestroyBody :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID) -> void #foreign joltc;
JPH_BodyInterface_CreateAndAddBody :: (_interface: *JPH_BodyInterface, settings: *JPH_BodyCreationSettings, activationMode: JPH_Activation) -> JPH_BodyID #foreign joltc;
JPH_BodyInterface_CreateBody :: (_interface: *JPH_BodyInterface, settings: *JPH_BodyCreationSettings) -> *JPH_Body #foreign joltc;
JPH_BodyInterface_CreateBodyWithID :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID, settings: *JPH_BodyCreationSettings) -> *JPH_Body #foreign joltc;
JPH_BodyInterface_CreateBodyWithoutID :: (_interface: *JPH_BodyInterface, settings: *JPH_BodyCreationSettings) -> *JPH_Body #foreign joltc;
JPH_BodyInterface_DestroyBodyWithoutID :: (_interface: *JPH_BodyInterface, body: *JPH_Body) -> void #foreign joltc;
JPH_BodyInterface_AssignBodyID :: (_interface: *JPH_BodyInterface, body: *JPH_Body) -> bool #foreign joltc;
JPH_BodyInterface_AssignBodyID2 :: (_interface: *JPH_BodyInterface, body: *JPH_Body, bodyID: JPH_BodyID) -> bool #foreign joltc;
JPH_BodyInterface_UnassignBodyID :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID) -> *JPH_Body #foreign joltc;

JPH_BodyInterface_CreateSoftBody :: (_interface: *JPH_BodyInterface, settings: *JPH_SoftBodyCreationSettings) -> *JPH_Body #foreign joltc;
JPH_BodyInterface_CreateSoftBodyWithID :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID, settings: *JPH_SoftBodyCreationSettings) -> *JPH_Body #foreign joltc;
JPH_BodyInterface_CreateSoftBodyWithoutID :: (_interface: *JPH_BodyInterface, settings: *JPH_SoftBodyCreationSettings) -> *JPH_Body #foreign joltc;
JPH_BodyInterface_CreateAndAddSoftBody :: (_interface: *JPH_BodyInterface, settings: *JPH_SoftBodyCreationSettings, activationMode: JPH_Activation) -> JPH_BodyID #foreign joltc;

JPH_BodyInterface_AddBody :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID, activationMode: JPH_Activation) -> void #foreign joltc;
JPH_BodyInterface_RemoveBody :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID) -> void #foreign joltc;
JPH_BodyInterface_RemoveAndDestroyBody :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID) -> void #foreign joltc;
JPH_BodyInterface_IsActive :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID) -> bool #foreign joltc;
JPH_BodyInterface_IsAdded :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID) -> bool #foreign joltc;
JPH_BodyInterface_GetBodyType :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID) -> JPH_BodyType #foreign joltc;

JPH_BodyInterface_SetLinearVelocity :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID, velocity: *JPH_Vec3) -> void #foreign joltc;
JPH_BodyInterface_GetLinearVelocity :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID, velocity: *JPH_Vec3) -> void #foreign joltc;
JPH_BodyInterface_GetCenterOfMassPosition :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID, position: *JPH_RVec3) -> void #foreign joltc;

JPH_BodyInterface_GetMotionType :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID) -> JPH_MotionType #foreign joltc;
JPH_BodyInterface_SetMotionType :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID, motionType: JPH_MotionType, activationMode: JPH_Activation) -> void #foreign joltc;

JPH_BodyInterface_GetRestitution :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID) -> float #foreign joltc;
JPH_BodyInterface_SetRestitution :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID, restitution: float) -> void #foreign joltc;

JPH_BodyInterface_GetFriction :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID) -> float #foreign joltc;
JPH_BodyInterface_SetFriction :: (_interface: *JPH_BodyInterface, bodyID: JPH_BodyID, friction: float) -> void #foreign joltc;

JPH_BodyInterface_SetPosition :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, position: *JPH_RVec3, activationMode: JPH_Activation) -> void #foreign joltc;
JPH_BodyInterface_GetPosition :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, result: *JPH_RVec3) -> void #foreign joltc;

JPH_BodyInterface_SetRotation :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, rotation: *JPH_Quat, activationMode: JPH_Activation) -> void #foreign joltc;
JPH_BodyInterface_GetRotation :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, result: *JPH_Quat) -> void #foreign joltc;

JPH_BodyInterface_SetPositionAndRotation :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, position: *JPH_RVec3, rotation: *JPH_Quat, activationMode: JPH_Activation) -> void #foreign joltc;
JPH_BodyInterface_SetPositionAndRotationWhenChanged :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, position: *JPH_RVec3, rotation: *JPH_Quat, activationMode: JPH_Activation) -> void #foreign joltc;
JPH_BodyInterface_GetPositionAndRotation :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, position: *JPH_RVec3, rotation: *JPH_Quat) -> void #foreign joltc;
JPH_BodyInterface_SetPositionRotationAndVelocity :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, position: *JPH_RVec3, rotation: *JPH_Quat, linearVelocity: *JPH_Vec3, angularVelocity: *JPH_Vec3) -> void #foreign joltc;

JPH_BodyInterface_GetCollissionGroup :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, result: *JPH_CollisionGroup) -> void #foreign joltc;
JPH_BodyInterface_SetCollissionGroup :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, group: *JPH_CollisionGroup) -> void #foreign joltc;

JPH_BodyInterface_GetShape :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID) -> *JPH_Shape #foreign joltc;
JPH_BodyInterface_SetShape :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, shape: *JPH_Shape, updateMassProperties: bool, activationMode: JPH_Activation) -> void #foreign joltc;
JPH_BodyInterface_NotifyShapeChanged :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, previousCenterOfMass: *JPH_Vec3, updateMassProperties: bool, activationMode: JPH_Activation) -> void #foreign joltc;

JPH_BodyInterface_ActivateBody :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID) -> void #foreign joltc;
JPH_BodyInterface_DeactivateBody :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID) -> void #foreign joltc;

JPH_BodyInterface_GetObjectLayer :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID) -> JPH_ObjectLayer #foreign joltc;
JPH_BodyInterface_SetObjectLayer :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, layer: JPH_ObjectLayer) -> void #foreign joltc;

JPH_BodyInterface_GetWorldTransform :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, result: *JPH_RMatrix4x4) -> void #foreign joltc;
JPH_BodyInterface_GetCenterOfMassTransform :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, result: *JPH_RMatrix4x4) -> void #foreign joltc;

JPH_BodyInterface_MoveKinematic :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, targetPosition: *JPH_RVec3, targetRotation: *JPH_Quat, deltaTime: float) -> void #foreign joltc;
JPH_BodyInterface_ApplyBuoyancyImpulse :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, surfacePosition: *JPH_RVec3, surfaceNormal: *JPH_Vec3, buoyancy: float, linearDrag: float, angularDrag: float, fluidVelocity: *JPH_Vec3, gravity: *JPH_Vec3, deltaTime: float) -> bool #foreign joltc;

JPH_BodyInterface_SetLinearAndAngularVelocity :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, linearVelocity: *JPH_Vec3, angularVelocity: *JPH_Vec3) -> void #foreign joltc;
JPH_BodyInterface_GetLinearAndAngularVelocity :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, linearVelocity: *JPH_Vec3, angularVelocity: *JPH_Vec3) -> void #foreign joltc;

JPH_BodyInterface_AddLinearVelocity :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, linearVelocity: *JPH_Vec3) -> void #foreign joltc;
JPH_BodyInterface_AddLinearAndAngularVelocity :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, linearVelocity: *JPH_Vec3, angularVelocity: *JPH_Vec3) -> void #foreign joltc;

JPH_BodyInterface_SetAngularVelocity :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, angularVelocity: *JPH_Vec3) -> void #foreign joltc;
JPH_BodyInterface_GetAngularVelocity :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, angularVelocity: *JPH_Vec3) -> void #foreign joltc;

JPH_BodyInterface_GetPointVelocity :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, point: *JPH_RVec3, velocity: *JPH_Vec3) -> void #foreign joltc;

JPH_BodyInterface_AddForce :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, force: *JPH_Vec3) -> void #foreign joltc;
JPH_BodyInterface_AddForce2 :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, force: *JPH_Vec3, point: *JPH_RVec3) -> void #foreign joltc;
JPH_BodyInterface_AddTorque :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, torque: *JPH_Vec3) -> void #foreign joltc;
JPH_BodyInterface_AddForceAndTorque :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, force: *JPH_Vec3, torque: *JPH_Vec3) -> void #foreign joltc;

JPH_BodyInterface_AddImpulse :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, impulse: *JPH_Vec3) -> void #foreign joltc;
JPH_BodyInterface_AddImpulse2 :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, impulse: *JPH_Vec3, point: *JPH_RVec3) -> void #foreign joltc;
JPH_BodyInterface_AddAngularImpulse :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, angularImpulse: *JPH_Vec3) -> void #foreign joltc;

JPH_BodyInterface_SetMotionQuality :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, quality: JPH_MotionQuality) -> void #foreign joltc;
JPH_BodyInterface_GetMotionQuality :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID) -> JPH_MotionQuality #foreign joltc;

JPH_BodyInterface_GetInverseInertia :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, result: *JPH_Matrix4x4) -> void #foreign joltc;

JPH_BodyInterface_SetGravityFactor :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, value: float) -> void #foreign joltc;
JPH_BodyInterface_GetGravityFactor :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID) -> float #foreign joltc;

JPH_BodyInterface_SetUseManifoldReduction :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, value: bool) -> void #foreign joltc;
JPH_BodyInterface_GetUseManifoldReduction :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID) -> bool #foreign joltc;

JPH_BodyInterface_SetUserData :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, inUserData: u64) -> void #foreign joltc;
JPH_BodyInterface_GetUserData :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID) -> u64 #foreign joltc;

JPH_BodyInterface_GetMaterial :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID, subShapeID: JPH_SubShapeID) -> *JPH_PhysicsMaterial #foreign joltc;

JPH_BodyInterface_InvalidateContactCache :: (_interface: *JPH_BodyInterface, bodyId: JPH_BodyID) -> void #foreign joltc;

//--------------------------------------------------------------------------------------------------
// JPH_BodyLockInterface
//--------------------------------------------------------------------------------------------------
JPH_BodyLockInterface_LockRead :: (lockInterface: *JPH_BodyLockInterface, bodyID: JPH_BodyID, outLock: *JPH_BodyLockRead) -> void #foreign joltc;
JPH_BodyLockInterface_UnlockRead :: (lockInterface: *JPH_BodyLockInterface, ioLock: *JPH_BodyLockRead) -> void #foreign joltc;

JPH_BodyLockInterface_LockWrite :: (lockInterface: *JPH_BodyLockInterface, bodyID: JPH_BodyID, outLock: *JPH_BodyLockWrite) -> void #foreign joltc;
JPH_BodyLockInterface_UnlockWrite :: (lockInterface: *JPH_BodyLockInterface, ioLock: *JPH_BodyLockWrite) -> void #foreign joltc;

JPH_BodyLockInterface_LockMultiRead :: (lockInterface: *JPH_BodyLockInterface, bodyIDs: *JPH_BodyID, count: u32) -> *JPH_BodyLockMultiRead #foreign joltc;
JPH_BodyLockMultiRead_Destroy :: (ioLock: *JPH_BodyLockMultiRead) -> void #foreign joltc;
JPH_BodyLockMultiRead_GetBody :: (ioLock: *JPH_BodyLockMultiRead, bodyIndex: u32) -> *JPH_Body #foreign joltc;

JPH_BodyLockInterface_LockMultiWrite :: (lockInterface: *JPH_BodyLockInterface, bodyIDs: *JPH_BodyID, count: u32) -> *JPH_BodyLockMultiWrite #foreign joltc;
JPH_BodyLockMultiWrite_Destroy :: (ioLock: *JPH_BodyLockMultiWrite) -> void #foreign joltc;
JPH_BodyLockMultiWrite_GetBody :: (ioLock: *JPH_BodyLockMultiWrite, bodyIndex: u32) -> *JPH_Body #foreign joltc;

//--------------------------------------------------------------------------------------------------
// JPH_MotionProperties
//--------------------------------------------------------------------------------------------------
JPH_MotionProperties_GetAllowedDOFs :: (properties: *JPH_MotionProperties) -> JPH_AllowedDOFs #foreign joltc;
JPH_MotionProperties_SetLinearDamping :: (properties: *JPH_MotionProperties, damping: float) -> void #foreign joltc;
JPH_MotionProperties_GetLinearDamping :: (properties: *JPH_MotionProperties) -> float #foreign joltc;
JPH_MotionProperties_SetAngularDamping :: (properties: *JPH_MotionProperties, damping: float) -> void #foreign joltc;
JPH_MotionProperties_GetAngularDamping :: (properties: *JPH_MotionProperties) -> float #foreign joltc;
JPH_MotionProperties_SetMassProperties :: (properties: *JPH_MotionProperties, allowedDOFs: JPH_AllowedDOFs, massProperties: *JPH_MassProperties) -> void #foreign joltc;
JPH_MotionProperties_GetInverseMassUnchecked :: (properties: *JPH_MotionProperties) -> float #foreign joltc;
JPH_MotionProperties_SetInverseMass :: (properties: *JPH_MotionProperties, inverseMass: float) -> void #foreign joltc;
JPH_MotionProperties_GetInverseInertiaDiagonal :: (properties: *JPH_MotionProperties, result: *JPH_Vec3) -> void #foreign joltc;
JPH_MotionProperties_GetInertiaRotation :: (properties: *JPH_MotionProperties, result: *JPH_Quat) -> void #foreign joltc;
JPH_MotionProperties_SetInverseInertia :: (properties: *JPH_MotionProperties, diagonal: *JPH_Vec3, rot: *JPH_Quat) -> void #foreign joltc;
JPH_MotionProperties_ScaleToMass :: (properties: *JPH_MotionProperties, mass: float) -> void #foreign joltc;

//--------------------------------------------------------------------------------------------------
// JPH_RayCast
//--------------------------------------------------------------------------------------------------
JPH_RayCast_GetPointOnRay :: (origin: *JPH_Vec3, direction: *JPH_Vec3, fraction: float, result: *JPH_Vec3) -> void #foreign joltc;
JPH_RRayCast_GetPointOnRay :: (origin: *JPH_RVec3, direction: *JPH_Vec3, fraction: float, result: *JPH_RVec3) -> void #foreign joltc;

//--------------------------------------------------------------------------------------------------
// JPH_MassProperties
//--------------------------------------------------------------------------------------------------
JPH_MassProperties_DecomposePrincipalMomentsOfInertia :: (properties: *JPH_MassProperties, rotation: *JPH_Matrix4x4, diagonal: *JPH_Vec3) -> void #foreign joltc;
JPH_MassProperties_ScaleToMass :: (properties: *JPH_MassProperties, mass: float) -> void #foreign joltc;
JPH_MassProperties_GetEquivalentSolidBoxSize :: (mass: float, inertiaDiagonal: *JPH_Vec3, result: *JPH_Vec3) -> void #foreign joltc;

//--------------------------------------------------------------------------------------------------
// JPH_CollideShapeSettings
//--------------------------------------------------------------------------------------------------
JPH_CollideShapeSettings_Init :: (settings: *JPH_CollideShapeSettings) -> void #foreign joltc;

//--------------------------------------------------------------------------------------------------
// JPH_ShapeCastSettings
//--------------------------------------------------------------------------------------------------
JPH_ShapeCastSettings_Init :: (settings: *JPH_ShapeCastSettings) -> void #foreign joltc;

//--------------------------------------------------------------------------------------------------
// JPH_BroadPhaseQuery
//--------------------------------------------------------------------------------------------------
JPH_BroadPhaseQuery_CastRay :: (query: *JPH_BroadPhaseQuery, origin: *JPH_Vec3, direction: *JPH_Vec3, callback: JPH_RayCastBodyCollectorCallback, userData: *void, broadPhaseLayerFilter: *JPH_BroadPhaseLayerFilter, objectLayerFilter: *JPH_ObjectLayerFilter) -> bool #foreign joltc;

JPH_BroadPhaseQuery_CastRay2 :: (query: *JPH_BroadPhaseQuery, origin: *JPH_Vec3, direction: *JPH_Vec3, collectorType: JPH_CollisionCollectorType, callback: JPH_RayCastBodyResultCallback, userData: *void, broadPhaseLayerFilter: *JPH_BroadPhaseLayerFilter, objectLayerFilter: *JPH_ObjectLayerFilter) -> bool #foreign joltc;

JPH_BroadPhaseQuery_CollideAABox :: (query: *JPH_BroadPhaseQuery, box: *JPH_AABox, callback: JPH_CollideShapeBodyCollectorCallback, userData: *void, broadPhaseLayerFilter: *JPH_BroadPhaseLayerFilter, objectLayerFilter: *JPH_ObjectLayerFilter) -> bool #foreign joltc;

JPH_BroadPhaseQuery_CollideSphere :: (query: *JPH_BroadPhaseQuery, center: *JPH_Vec3, radius: float, callback: JPH_CollideShapeBodyCollectorCallback, userData: *void, broadPhaseLayerFilter: *JPH_BroadPhaseLayerFilter, objectLayerFilter: *JPH_ObjectLayerFilter) -> bool #foreign joltc;

JPH_BroadPhaseQuery_CollidePoint :: (query: *JPH_BroadPhaseQuery, point: *JPH_Vec3, callback: JPH_CollideShapeBodyCollectorCallback, userData: *void, broadPhaseLayerFilter: *JPH_BroadPhaseLayerFilter, objectLayerFilter: *JPH_ObjectLayerFilter) -> bool #foreign joltc;

//--------------------------------------------------------------------------------------------------
// JPH_NarrowPhaseQuery
//--------------------------------------------------------------------------------------------------
JPH_NarrowPhaseQuery_CastRay :: (query: *JPH_NarrowPhaseQuery, origin: *JPH_RVec3, direction: *JPH_Vec3, hit: *JPH_RayCastResult, broadPhaseLayerFilter: *JPH_BroadPhaseLayerFilter, objectLayerFilter: *JPH_ObjectLayerFilter, bodyFilter: *JPH_BodyFilter) -> bool #foreign joltc;

JPH_NarrowPhaseQuery_CastRay2 :: (query: *JPH_NarrowPhaseQuery, origin: *JPH_RVec3, direction: *JPH_Vec3, rayCastSettings: *JPH_RayCastSettings, callback: JPH_CastRayCollectorCallback, userData: *void, broadPhaseLayerFilter: *JPH_BroadPhaseLayerFilter, objectLayerFilter: *JPH_ObjectLayerFilter, bodyFilter: *JPH_BodyFilter, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;

JPH_NarrowPhaseQuery_CastRay3 :: (query: *JPH_NarrowPhaseQuery, origin: *JPH_RVec3, direction: *JPH_Vec3, rayCastSettings: *JPH_RayCastSettings, collectorType: JPH_CollisionCollectorType, callback: JPH_CastRayResultCallback, userData: *void, broadPhaseLayerFilter: *JPH_BroadPhaseLayerFilter, objectLayerFilter: *JPH_ObjectLayerFilter, bodyFilter: *JPH_BodyFilter, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;

JPH_NarrowPhaseQuery_CollidePoint :: (query: *JPH_NarrowPhaseQuery, point: *JPH_RVec3, callback: JPH_CollidePointCollectorCallback, userData: *void, broadPhaseLayerFilter: *JPH_BroadPhaseLayerFilter, objectLayerFilter: *JPH_ObjectLayerFilter, bodyFilter: *JPH_BodyFilter, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;

JPH_NarrowPhaseQuery_CollidePoint2 :: (query: *JPH_NarrowPhaseQuery, point: *JPH_RVec3, collectorType: JPH_CollisionCollectorType, callback: JPH_CollidePointResultCallback, userData: *void, broadPhaseLayerFilter: *JPH_BroadPhaseLayerFilter, objectLayerFilter: *JPH_ObjectLayerFilter, bodyFilter: *JPH_BodyFilter, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;

JPH_NarrowPhaseQuery_CollideShape :: (query: *JPH_NarrowPhaseQuery, shape: *JPH_Shape, scale: *JPH_Vec3, centerOfMassTransform: *JPH_RMatrix4x4, settings: *JPH_CollideShapeSettings, baseOffset: *JPH_RVec3, callback: JPH_CollideShapeCollectorCallback, userData: *void, broadPhaseLayerFilter: *JPH_BroadPhaseLayerFilter, objectLayerFilter: *JPH_ObjectLayerFilter, bodyFilter: *JPH_BodyFilter, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;

JPH_NarrowPhaseQuery_CollideShape2 :: (query: *JPH_NarrowPhaseQuery, shape: *JPH_Shape, scale: *JPH_Vec3, centerOfMassTransform: *JPH_RMatrix4x4, settings: *JPH_CollideShapeSettings, baseOffset: *JPH_RVec3, collectorType: JPH_CollisionCollectorType, callback: JPH_CollideShapeResultCallback, userData: *void, broadPhaseLayerFilter: *JPH_BroadPhaseLayerFilter, objectLayerFilter: *JPH_ObjectLayerFilter, bodyFilter: *JPH_BodyFilter, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;

JPH_NarrowPhaseQuery_CastShape :: (query: *JPH_NarrowPhaseQuery, shape: *JPH_Shape, worldTransform: *JPH_RMatrix4x4, direction: *JPH_Vec3, settings: *JPH_ShapeCastSettings, baseOffset: *JPH_RVec3, callback: JPH_CastShapeCollectorCallback, userData: *void, broadPhaseLayerFilter: *JPH_BroadPhaseLayerFilter, objectLayerFilter: *JPH_ObjectLayerFilter, bodyFilter: *JPH_BodyFilter, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;

JPH_NarrowPhaseQuery_CastShape2 :: (query: *JPH_NarrowPhaseQuery, shape: *JPH_Shape, worldTransform: *JPH_RMatrix4x4, direction: *JPH_Vec3, settings: *JPH_ShapeCastSettings, baseOffset: *JPH_RVec3, collectorType: JPH_CollisionCollectorType, callback: JPH_CastShapeResultCallback, userData: *void, broadPhaseLayerFilter: *JPH_BroadPhaseLayerFilter, objectLayerFilter: *JPH_ObjectLayerFilter, bodyFilter: *JPH_BodyFilter, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;

//--------------------------------------------------------------------------------------------------
// JPH_Body
//--------------------------------------------------------------------------------------------------
JPH_Body_GetID :: (body: *JPH_Body) -> JPH_BodyID #foreign joltc;
JPH_Body_GetBodyType :: (body: *JPH_Body) -> JPH_BodyType #foreign joltc;
JPH_Body_IsRigidBody :: (body: *JPH_Body) -> bool #foreign joltc;
JPH_Body_IsSoftBody :: (body: *JPH_Body) -> bool #foreign joltc;
JPH_Body_IsActive :: (body: *JPH_Body) -> bool #foreign joltc;
JPH_Body_IsStatic :: (body: *JPH_Body) -> bool #foreign joltc;
JPH_Body_IsKinematic :: (body: *JPH_Body) -> bool #foreign joltc;
JPH_Body_IsDynamic :: (body: *JPH_Body) -> bool #foreign joltc;
JPH_Body_CanBeKinematicOrDynamic :: (body: *JPH_Body) -> bool #foreign joltc;

JPH_Body_SetIsSensor :: (body: *JPH_Body, value: bool) -> void #foreign joltc;
JPH_Body_IsSensor :: (body: *JPH_Body) -> bool #foreign joltc;

JPH_Body_SetCollideKinematicVsNonDynamic :: (body: *JPH_Body, value: bool) -> void #foreign joltc;
JPH_Body_GetCollideKinematicVsNonDynamic :: (body: *JPH_Body) -> bool #foreign joltc;

JPH_Body_SetUseManifoldReduction :: (body: *JPH_Body, value: bool) -> void #foreign joltc;
JPH_Body_GetUseManifoldReduction :: (body: *JPH_Body) -> bool #foreign joltc;
JPH_Body_GetUseManifoldReductionWithBody :: (body: *JPH_Body, other: *JPH_Body) -> bool #foreign joltc;

JPH_Body_SetApplyGyroscopicForce :: (body: *JPH_Body, value: bool) -> void #foreign joltc;
JPH_Body_GetApplyGyroscopicForce :: (body: *JPH_Body) -> bool #foreign joltc;

JPH_Body_SetEnhancedInternalEdgeRemoval :: (body: *JPH_Body, value: bool) -> void #foreign joltc;
JPH_Body_GetEnhancedInternalEdgeRemoval :: (body: *JPH_Body) -> bool #foreign joltc;
JPH_Body_GetEnhancedInternalEdgeRemovalWithBody :: (body: *JPH_Body, other: *JPH_Body) -> bool #foreign joltc;

JPH_Body_GetMotionType :: (body: *JPH_Body) -> JPH_MotionType #foreign joltc;
JPH_Body_SetMotionType :: (body: *JPH_Body, motionType: JPH_MotionType) -> void #foreign joltc;

JPH_Body_GetBroadPhaseLayer :: (body: *JPH_Body) -> JPH_BroadPhaseLayer #foreign joltc;
JPH_Body_GetObjectLayer :: (body: *JPH_Body) -> JPH_ObjectLayer #foreign joltc;

JPH_Body_GetCollissionGroup :: (body: *JPH_Body, result: *JPH_CollisionGroup) -> void #foreign joltc;
JPH_Body_SetCollissionGroup :: (body: *JPH_Body, value: *JPH_CollisionGroup) -> void #foreign joltc;

JPH_Body_GetAllowSleeping :: (body: *JPH_Body) -> bool #foreign joltc;
JPH_Body_SetAllowSleeping :: (body: *JPH_Body, allowSleeping: bool) -> void #foreign joltc;
JPH_Body_ResetSleepTimer :: (body: *JPH_Body) -> void #foreign joltc;

JPH_Body_GetFriction :: (body: *JPH_Body) -> float #foreign joltc;
JPH_Body_SetFriction :: (body: *JPH_Body, friction: float) -> void #foreign joltc;
JPH_Body_GetRestitution :: (body: *JPH_Body) -> float #foreign joltc;
JPH_Body_SetRestitution :: (body: *JPH_Body, restitution: float) -> void #foreign joltc;
JPH_Body_GetLinearVelocity :: (body: *JPH_Body, velocity: *JPH_Vec3) -> void #foreign joltc;
JPH_Body_SetLinearVelocity :: (body: *JPH_Body, velocity: *JPH_Vec3) -> void #foreign joltc;
JPH_Body_SetLinearVelocityClamped :: (body: *JPH_Body, velocity: *JPH_Vec3) -> void #foreign joltc;
JPH_Body_GetAngularVelocity :: (body: *JPH_Body, velocity: *JPH_Vec3) -> void #foreign joltc;
JPH_Body_SetAngularVelocity :: (body: *JPH_Body, velocity: *JPH_Vec3) -> void #foreign joltc;
JPH_Body_SetAngularVelocityClamped :: (body: *JPH_Body, velocity: *JPH_Vec3) -> void #foreign joltc;

JPH_Body_GetPointVelocityCOM :: (body: *JPH_Body, pointRelativeToCOM: *JPH_Vec3, velocity: *JPH_Vec3) -> void #foreign joltc;
JPH_Body_GetPointVelocity :: (body: *JPH_Body, point: *JPH_RVec3, velocity: *JPH_Vec3) -> void #foreign joltc;

JPH_Body_AddForce :: (body: *JPH_Body, force: *JPH_Vec3) -> void #foreign joltc;
JPH_Body_AddForceAtPosition :: (body: *JPH_Body, force: *JPH_Vec3, position: *JPH_RVec3) -> void #foreign joltc;
JPH_Body_AddTorque :: (body: *JPH_Body, force: *JPH_Vec3) -> void #foreign joltc;
JPH_Body_GetAccumulatedForce :: (body: *JPH_Body, force: *JPH_Vec3) -> void #foreign joltc;
JPH_Body_GetAccumulatedTorque :: (body: *JPH_Body, force: *JPH_Vec3) -> void #foreign joltc;
JPH_Body_ResetForce :: (body: *JPH_Body) -> void #foreign joltc;
JPH_Body_ResetTorque :: (body: *JPH_Body) -> void #foreign joltc;
JPH_Body_ResetMotion :: (body: *JPH_Body) -> void #foreign joltc;

JPH_Body_GetInverseInertia :: (body: *JPH_Body, result: *JPH_Matrix4x4) -> void #foreign joltc;

JPH_Body_AddImpulse :: (body: *JPH_Body, impulse: *JPH_Vec3) -> void #foreign joltc;
JPH_Body_AddImpulseAtPosition :: (body: *JPH_Body, impulse: *JPH_Vec3, position: *JPH_RVec3) -> void #foreign joltc;
JPH_Body_AddAngularImpulse :: (body: *JPH_Body, angularImpulse: *JPH_Vec3) -> void #foreign joltc;
JPH_Body_MoveKinematic :: (body: *JPH_Body, targetPosition: *JPH_RVec3, targetRotation: *JPH_Quat, deltaTime: float) -> void #foreign joltc;
JPH_Body_ApplyBuoyancyImpulse :: (body: *JPH_Body, surfacePosition: *JPH_RVec3, surfaceNormal: *JPH_Vec3, buoyancy: float, linearDrag: float, angularDrag: float, fluidVelocity: *JPH_Vec3, gravity: *JPH_Vec3, deltaTime: float) -> bool #foreign joltc;

JPH_Body_IsInBroadPhase :: (body: *JPH_Body) -> bool #foreign joltc;
JPH_Body_IsCollisionCacheInvalid :: (body: *JPH_Body) -> bool #foreign joltc;

JPH_Body_GetShape :: (body: *JPH_Body) -> *JPH_Shape #foreign joltc;

JPH_Body_GetPosition :: (body: *JPH_Body, result: *JPH_RVec3) -> void #foreign joltc;
JPH_Body_GetRotation :: (body: *JPH_Body, result: *JPH_Quat) -> void #foreign joltc;
JPH_Body_GetWorldTransform :: (body: *JPH_Body, result: *JPH_RMatrix4x4) -> void #foreign joltc;
JPH_Body_GetCenterOfMassPosition :: (body: *JPH_Body, result: *JPH_RVec3) -> void #foreign joltc;
JPH_Body_GetCenterOfMassTransform :: (body: *JPH_Body, result: *JPH_RMatrix4x4) -> void #foreign joltc;
JPH_Body_GetInverseCenterOfMassTransform :: (body: *JPH_Body, result: *JPH_RMatrix4x4) -> void #foreign joltc;

JPH_Body_GetWorldSpaceBounds :: (body: *JPH_Body, result: *JPH_AABox) -> void #foreign joltc;
JPH_Body_GetWorldSpaceSurfaceNormal :: (body: *JPH_Body, subShapeID: JPH_SubShapeID, position: *JPH_RVec3, normal: *JPH_Vec3) -> void #foreign joltc;

JPH_Body_GetMotionProperties :: (body: *JPH_Body) -> *JPH_MotionProperties #foreign joltc;
JPH_Body_GetMotionPropertiesUnchecked :: (body: *JPH_Body) -> *JPH_MotionProperties #foreign joltc;

JPH_Body_SetUserData :: (body: *JPH_Body, userData: u64) -> void #foreign joltc;
JPH_Body_GetUserData :: (body: *JPH_Body) -> u64 #foreign joltc;

JPH_Body_GetFixedToWorldBody :: () -> *JPH_Body #foreign joltc;

/* JPH_BroadPhaseLayerFilter_Procs */
JPH_BroadPhaseLayerFilter_Procs :: struct {
    ShouldCollide: #type (userData: *void, layer: JPH_BroadPhaseLayer) -> bool #c_call;
}

JPH_BroadPhaseLayerFilter_SetProcs :: (procs: *JPH_BroadPhaseLayerFilter_Procs) -> void #foreign joltc;
JPH_BroadPhaseLayerFilter_Create :: (userData: *void) -> *JPH_BroadPhaseLayerFilter #foreign joltc;
JPH_BroadPhaseLayerFilter_Destroy :: (filter: *JPH_BroadPhaseLayerFilter) -> void #foreign joltc;

/* JPH_ObjectLayerFilter */
JPH_ObjectLayerFilter_Procs :: struct {
    ShouldCollide: #type (userData: *void, layer: JPH_ObjectLayer) -> bool #c_call;
}

JPH_ObjectLayerFilter_SetProcs :: (procs: *JPH_ObjectLayerFilter_Procs) -> void #foreign joltc;
JPH_ObjectLayerFilter_Create :: (userData: *void) -> *JPH_ObjectLayerFilter #foreign joltc;
JPH_ObjectLayerFilter_Destroy :: (filter: *JPH_ObjectLayerFilter) -> void #foreign joltc;

/* JPH_BodyFilter */
JPH_BodyFilter_Procs :: struct {
    ShouldCollide:       #type (userData: *void, bodyID: JPH_BodyID) -> bool #c_call;
    ShouldCollideLocked: #type (userData: *void, bodyID: *JPH_Body) -> bool #c_call;
}

JPH_BodyFilter_SetProcs :: (procs: *JPH_BodyFilter_Procs) -> void #foreign joltc;
JPH_BodyFilter_Create :: (userData: *void) -> *JPH_BodyFilter #foreign joltc;
JPH_BodyFilter_Destroy :: (filter: *JPH_BodyFilter) -> void #foreign joltc;

/* JPH_ShapeFilter */
JPH_ShapeFilter_Procs :: struct {
    ShouldCollide:  #type (userData: *void, shape2: *JPH_Shape, subShapeIDOfShape2: *JPH_SubShapeID) -> bool #c_call;
    ShouldCollide2: #type (userData: *void, shape1: *JPH_Shape, subShapeIDOfShape1: *JPH_SubShapeID, shape2: *JPH_Shape, subShapeIDOfShape2: *JPH_SubShapeID) -> bool #c_call;
}

JPH_ShapeFilter_SetProcs :: (procs: *JPH_ShapeFilter_Procs) -> void #foreign joltc;
JPH_ShapeFilter_Create :: (userData: *void) -> *JPH_ShapeFilter #foreign joltc;
JPH_ShapeFilter_Destroy :: (filter: *JPH_ShapeFilter) -> void #foreign joltc;
JPH_ShapeFilter_GetBodyID2 :: (filter: *JPH_ShapeFilter) -> JPH_BodyID #foreign joltc;
JPH_ShapeFilter_SetBodyID2 :: (filter: *JPH_ShapeFilter, id: JPH_BodyID) -> void #foreign joltc;

/* JPH_SimShapeFilter */
JPH_SimShapeFilter_Procs :: struct {
    ShouldCollide: #type (userData: *void, body1: *JPH_Body, shape1: *JPH_Shape, subShapeIDOfShape1: *JPH_SubShapeID, body2: *JPH_Body, shape2: *JPH_Shape, subShapeIDOfShape2: *JPH_SubShapeID) -> bool #c_call;
}

JPH_SimShapeFilter_SetProcs :: (procs: *JPH_SimShapeFilter_Procs) -> void #foreign joltc;
JPH_SimShapeFilter_Create :: (userData: *void) -> *JPH_SimShapeFilter #foreign joltc;
JPH_SimShapeFilter_Destroy :: (filter: *JPH_SimShapeFilter) -> void #foreign joltc;

/* Contact listener */
JPH_ContactListener_Procs :: struct {
    OnContactValidate:  #type (userData: *void, body1: *JPH_Body, body2: *JPH_Body, baseOffset: *JPH_RVec3, collisionResult: *JPH_CollideShapeResult) -> JPH_ValidateResult #c_call;

    OnContactAdded:     #type (userData: *void, body1: *JPH_Body, body2: *JPH_Body, manifold: *JPH_ContactManifold, settings: *JPH_ContactSettings) -> void #c_call;

    OnContactPersisted: #type (userData: *void, body1: *JPH_Body, body2: *JPH_Body, manifold: *JPH_ContactManifold, settings: *JPH_ContactSettings) -> void #c_call;

    OnContactRemoved:   #type (userData: *void, subShapePair: *JPH_SubShapeIDPair) -> void #c_call;
}

JPH_ContactListener_SetProcs :: (procs: *JPH_ContactListener_Procs) -> void #foreign joltc;
JPH_ContactListener_Create :: (userData: *void) -> *JPH_ContactListener #foreign joltc;
JPH_ContactListener_Destroy :: (listener: *JPH_ContactListener) -> void #foreign joltc;

/* BodyActivationListener */
JPH_BodyActivationListener_Procs :: struct {
    OnBodyActivated:   #type (userData: *void, bodyID: JPH_BodyID, bodyUserData: u64) -> void #c_call;
    OnBodyDeactivated: #type (userData: *void, bodyID: JPH_BodyID, bodyUserData: u64) -> void #c_call;
}

JPH_BodyActivationListener_SetProcs :: (procs: *JPH_BodyActivationListener_Procs) -> void #foreign joltc;
JPH_BodyActivationListener_Create :: (userData: *void) -> *JPH_BodyActivationListener #foreign joltc;
JPH_BodyActivationListener_Destroy :: (listener: *JPH_BodyActivationListener) -> void #foreign joltc;

/* JPH_BodyDrawFilter */
JPH_BodyDrawFilter_Procs :: struct {
    ShouldDraw: #type (userData: *void, body: *JPH_Body) -> bool #c_call;
}

JPH_BodyDrawFilter_SetProcs :: (procs: *JPH_BodyDrawFilter_Procs) -> void #foreign joltc;
JPH_BodyDrawFilter_Create :: (userData: *void) -> *JPH_BodyDrawFilter #foreign joltc;
JPH_BodyDrawFilter_Destroy :: (filter: *JPH_BodyDrawFilter) -> void #foreign joltc;

/* ContactManifold */
JPH_ContactManifold_GetWorldSpaceNormal :: (manifold: *JPH_ContactManifold, result: *JPH_Vec3) -> void #foreign joltc;
JPH_ContactManifold_GetPenetrationDepth :: (manifold: *JPH_ContactManifold) -> float #foreign joltc;
JPH_ContactManifold_GetSubShapeID1 :: (manifold: *JPH_ContactManifold) -> JPH_SubShapeID #foreign joltc;
JPH_ContactManifold_GetSubShapeID2 :: (manifold: *JPH_ContactManifold) -> JPH_SubShapeID #foreign joltc;
JPH_ContactManifold_GetPointCount :: (manifold: *JPH_ContactManifold) -> u32 #foreign joltc;
JPH_ContactManifold_GetWorldSpaceContactPointOn1 :: (manifold: *JPH_ContactManifold, index: u32, result: *JPH_RVec3) -> void #foreign joltc;
JPH_ContactManifold_GetWorldSpaceContactPointOn2 :: (manifold: *JPH_ContactManifold, index: u32, result: *JPH_RVec3) -> void #foreign joltc;

/* ContactSettings */
JPH_ContactSettings_GetFriction :: (settings: *JPH_ContactSettings) -> float #foreign joltc;
JPH_ContactSettings_SetFriction :: (settings: *JPH_ContactSettings, friction: float) -> void #foreign joltc;
JPH_ContactSettings_GetRestitution :: (settings: *JPH_ContactSettings) -> float #foreign joltc;
JPH_ContactSettings_SetRestitution :: (settings: *JPH_ContactSettings, restitution: float) -> void #foreign joltc;
JPH_ContactSettings_GetInvMassScale1 :: (settings: *JPH_ContactSettings) -> float #foreign joltc;
JPH_ContactSettings_SetInvMassScale1 :: (settings: *JPH_ContactSettings, scale: float) -> void #foreign joltc;
JPH_ContactSettings_GetInvInertiaScale1 :: (settings: *JPH_ContactSettings) -> float #foreign joltc;
JPH_ContactSettings_SetInvInertiaScale1 :: (settings: *JPH_ContactSettings, scale: float) -> void #foreign joltc;
JPH_ContactSettings_GetInvMassScale2 :: (settings: *JPH_ContactSettings) -> float #foreign joltc;
JPH_ContactSettings_SetInvMassScale2 :: (settings: *JPH_ContactSettings, scale: float) -> void #foreign joltc;
JPH_ContactSettings_GetInvInertiaScale2 :: (settings: *JPH_ContactSettings) -> float #foreign joltc;
JPH_ContactSettings_SetInvInertiaScale2 :: (settings: *JPH_ContactSettings, scale: float) -> void #foreign joltc;
JPH_ContactSettings_GetIsSensor :: (settings: *JPH_ContactSettings) -> bool #foreign joltc;
JPH_ContactSettings_SetIsSensor :: (settings: *JPH_ContactSettings, sensor: bool) -> void #foreign joltc;
JPH_ContactSettings_GetRelativeLinearSurfaceVelocity :: (settings: *JPH_ContactSettings, result: *JPH_Vec3) -> void #foreign joltc;
JPH_ContactSettings_SetRelativeLinearSurfaceVelocity :: (settings: *JPH_ContactSettings, velocity: *JPH_Vec3) -> void #foreign joltc;
JPH_ContactSettings_GetRelativeAngularSurfaceVelocity :: (settings: *JPH_ContactSettings, result: *JPH_Vec3) -> void #foreign joltc;
JPH_ContactSettings_SetRelativeAngularSurfaceVelocity :: (settings: *JPH_ContactSettings, velocity: *JPH_Vec3) -> void #foreign joltc;

/* CharacterBase */
JPH_CharacterBase_Destroy :: (character: *JPH_CharacterBase) -> void #foreign joltc;
JPH_CharacterBase_GetCosMaxSlopeAngle :: (character: *JPH_CharacterBase) -> float #foreign joltc;
JPH_CharacterBase_SetMaxSlopeAngle :: (character: *JPH_CharacterBase, maxSlopeAngle: float) -> void #foreign joltc;
JPH_CharacterBase_GetUp :: (character: *JPH_CharacterBase, result: *JPH_Vec3) -> void #foreign joltc;
JPH_CharacterBase_SetUp :: (character: *JPH_CharacterBase, value: *JPH_Vec3) -> void #foreign joltc;
JPH_CharacterBase_IsSlopeTooSteep :: (character: *JPH_CharacterBase, value: *JPH_Vec3) -> bool #foreign joltc;
JPH_CharacterBase_GetShape :: (character: *JPH_CharacterBase) -> *JPH_Shape #foreign joltc;

JPH_CharacterBase_GetGroundState :: (character: *JPH_CharacterBase) -> JPH_GroundState #foreign joltc;
JPH_CharacterBase_IsSupported :: (character: *JPH_CharacterBase) -> bool #foreign joltc;
JPH_CharacterBase_GetGroundPosition :: (character: *JPH_CharacterBase, position: *JPH_RVec3) -> void #foreign joltc;
JPH_CharacterBase_GetGroundNormal :: (character: *JPH_CharacterBase, normal: *JPH_Vec3) -> void #foreign joltc;
JPH_CharacterBase_GetGroundVelocity :: (character: *JPH_CharacterBase, velocity: *JPH_Vec3) -> void #foreign joltc;
JPH_CharacterBase_GetGroundMaterial :: (character: *JPH_CharacterBase) -> *JPH_PhysicsMaterial #foreign joltc;
JPH_CharacterBase_GetGroundBodyId :: (character: *JPH_CharacterBase) -> JPH_BodyID #foreign joltc;
JPH_CharacterBase_GetGroundSubShapeId :: (character: *JPH_CharacterBase) -> JPH_SubShapeID #foreign joltc;
JPH_CharacterBase_GetGroundUserData :: (character: *JPH_CharacterBase) -> u64 #foreign joltc;

/* CharacterSettings */
JPH_CharacterSettings_Init :: (settings: *JPH_CharacterSettings) -> void #foreign joltc;

/* Character */
JPH_Character_Create :: (settings: *JPH_CharacterSettings, position: *JPH_RVec3, rotation: *JPH_Quat, userData: u64, system: *JPH_PhysicsSystem) -> *JPH_Character #foreign joltc;

JPH_Character_AddToPhysicsSystem :: (character: *JPH_Character, activationMode: JPH_Activation, lockBodies: bool) -> void #foreign joltc;
JPH_Character_RemoveFromPhysicsSystem :: (character: *JPH_Character, lockBodies: bool) -> void #foreign joltc;
JPH_Character_Activate :: (character: *JPH_Character, lockBodies: bool) -> void #foreign joltc;
JPH_Character_PostSimulation :: (character: *JPH_Character, maxSeparationDistance: float, lockBodies: bool) -> void #foreign joltc;
JPH_Character_SetLinearAndAngularVelocity :: (character: *JPH_Character, linearVelocity: *JPH_Vec3, angularVelocity: *JPH_Vec3, lockBodies: bool) -> void #foreign joltc;
JPH_Character_GetLinearVelocity :: (character: *JPH_Character, result: *JPH_Vec3) -> void #foreign joltc;
JPH_Character_SetLinearVelocity :: (character: *JPH_Character, value: *JPH_Vec3, lockBodies: bool) -> void #foreign joltc;
JPH_Character_AddLinearVelocity :: (character: *JPH_Character, value: *JPH_Vec3, lockBodies: bool) -> void #foreign joltc;
JPH_Character_AddImpulse :: (character: *JPH_Character, value: *JPH_Vec3, lockBodies: bool) -> void #foreign joltc;
JPH_Character_GetBodyID :: (character: *JPH_Character) -> JPH_BodyID #foreign joltc;

JPH_Character_GetPositionAndRotation :: (character: *JPH_Character, position: *JPH_RVec3, rotation: *JPH_Quat, lockBodies: bool) -> void #foreign joltc;
JPH_Character_SetPositionAndRotation :: (character: *JPH_Character, position: *JPH_RVec3, rotation: *JPH_Quat, activationMode: JPH_Activation, lockBodies: bool) -> void #foreign joltc;
JPH_Character_GetPosition :: (character: *JPH_Character, position: *JPH_RVec3, lockBodies: bool) -> void #foreign joltc;
JPH_Character_SetPosition :: (character: *JPH_Character, position: *JPH_RVec3, activationMode: JPH_Activation, lockBodies: bool) -> void #foreign joltc;
JPH_Character_GetRotation :: (character: *JPH_Character, rotation: *JPH_Quat, lockBodies: bool) -> void #foreign joltc;
JPH_Character_SetRotation :: (character: *JPH_Character, rotation: *JPH_Quat, activationMode: JPH_Activation, lockBodies: bool) -> void #foreign joltc;
JPH_Character_GetCenterOfMassPosition :: (character: *JPH_Character, result: *JPH_RVec3, lockBodies: bool) -> void #foreign joltc;
JPH_Character_GetWorldTransform :: (character: *JPH_Character, result: *JPH_RMatrix4x4, lockBodies: bool) -> void #foreign joltc;
JPH_Character_GetLayer :: (character: *JPH_Character) -> JPH_ObjectLayer #foreign joltc;
JPH_Character_SetLayer :: (character: *JPH_Character, value: JPH_ObjectLayer, lockBodies: bool) -> void #foreign joltc;
JPH_Character_SetShape :: (character: *JPH_Character, shape: *JPH_Shape, maxPenetrationDepth: float, lockBodies: bool) -> void #foreign joltc;

/* CharacterVirtualSettings */
JPH_CharacterVirtualSettings_Init :: (settings: *JPH_CharacterVirtualSettings) -> void #foreign joltc;

/* CharacterVirtual */
JPH_CharacterVirtual_Create :: (settings: *JPH_CharacterVirtualSettings, position: *JPH_RVec3, rotation: *JPH_Quat, userData: u64, system: *JPH_PhysicsSystem) -> *JPH_CharacterVirtual #foreign joltc;

JPH_CharacterVirtual_GetID :: (character: *JPH_CharacterVirtual) -> JPH_CharacterID #foreign joltc;
JPH_CharacterVirtual_SetListener :: (character: *JPH_CharacterVirtual, listener: *JPH_CharacterContactListener) -> void #foreign joltc;
JPH_CharacterVirtual_SetCharacterVsCharacterCollision :: (character: *JPH_CharacterVirtual, characterVsCharacterCollision: *JPH_CharacterVsCharacterCollision) -> void #foreign joltc;

JPH_CharacterVirtual_GetLinearVelocity :: (character: *JPH_CharacterVirtual, velocity: *JPH_Vec3) -> void #foreign joltc;
JPH_CharacterVirtual_SetLinearVelocity :: (character: *JPH_CharacterVirtual, velocity: *JPH_Vec3) -> void #foreign joltc;
JPH_CharacterVirtual_GetPosition :: (character: *JPH_CharacterVirtual, position: *JPH_RVec3) -> void #foreign joltc;
JPH_CharacterVirtual_SetPosition :: (character: *JPH_CharacterVirtual, position: *JPH_RVec3) -> void #foreign joltc;
JPH_CharacterVirtual_GetRotation :: (character: *JPH_CharacterVirtual, rotation: *JPH_Quat) -> void #foreign joltc;
JPH_CharacterVirtual_SetRotation :: (character: *JPH_CharacterVirtual, rotation: *JPH_Quat) -> void #foreign joltc;
JPH_CharacterVirtual_GetWorldTransform :: (character: *JPH_CharacterVirtual, result: *JPH_RMatrix4x4) -> void #foreign joltc;
JPH_CharacterVirtual_GetCenterOfMassTransform :: (character: *JPH_CharacterVirtual, result: *JPH_RMatrix4x4) -> void #foreign joltc;
JPH_CharacterVirtual_GetMass :: (character: *JPH_CharacterVirtual) -> float #foreign joltc;
JPH_CharacterVirtual_SetMass :: (character: *JPH_CharacterVirtual, value: float) -> void #foreign joltc;
JPH_CharacterVirtual_GetMaxStrength :: (character: *JPH_CharacterVirtual) -> float #foreign joltc;
JPH_CharacterVirtual_SetMaxStrength :: (character: *JPH_CharacterVirtual, value: float) -> void #foreign joltc;

JPH_CharacterVirtual_GetPenetrationRecoverySpeed :: (character: *JPH_CharacterVirtual) -> float #foreign joltc;
JPH_CharacterVirtual_SetPenetrationRecoverySpeed :: (character: *JPH_CharacterVirtual, value: float) -> void #foreign joltc;
JPH_CharacterVirtual_GetEnhancedInternalEdgeRemoval :: (character: *JPH_CharacterVirtual) -> bool #foreign joltc;
JPH_CharacterVirtual_SetEnhancedInternalEdgeRemoval :: (character: *JPH_CharacterVirtual, value: bool) -> void #foreign joltc;
JPH_CharacterVirtual_GetCharacterPadding :: (character: *JPH_CharacterVirtual) -> float #foreign joltc;
JPH_CharacterVirtual_GetMaxNumHits :: (character: *JPH_CharacterVirtual) -> u32 #foreign joltc;
JPH_CharacterVirtual_SetMaxNumHits :: (character: *JPH_CharacterVirtual, value: u32) -> void #foreign joltc;
JPH_CharacterVirtual_GetHitReductionCosMaxAngle :: (character: *JPH_CharacterVirtual) -> float #foreign joltc;
JPH_CharacterVirtual_SetHitReductionCosMaxAngle :: (character: *JPH_CharacterVirtual, value: float) -> void #foreign joltc;
JPH_CharacterVirtual_GetMaxHitsExceeded :: (character: *JPH_CharacterVirtual) -> bool #foreign joltc;
JPH_CharacterVirtual_GetShapeOffset :: (character: *JPH_CharacterVirtual, result: *JPH_Vec3) -> void #foreign joltc;
JPH_CharacterVirtual_SetShapeOffset :: (character: *JPH_CharacterVirtual, value: *JPH_Vec3) -> void #foreign joltc;
JPH_CharacterVirtual_GetUserData :: (character: *JPH_CharacterVirtual) -> u64 #foreign joltc;
JPH_CharacterVirtual_SetUserData :: (character: *JPH_CharacterVirtual, value: u64) -> void #foreign joltc;
JPH_CharacterVirtual_GetInnerBodyID :: (character: *JPH_CharacterVirtual) -> JPH_BodyID #foreign joltc;

JPH_CharacterVirtual_CancelVelocityTowardsSteepSlopes :: (character: *JPH_CharacterVirtual, desiredVelocity: *JPH_Vec3, velocity: *JPH_Vec3) -> void #foreign joltc;
JPH_CharacterVirtual_StartTrackingContactChanges :: (character: *JPH_CharacterVirtual) -> void #foreign joltc;
JPH_CharacterVirtual_FinishTrackingContactChanges :: (character: *JPH_CharacterVirtual) -> void #foreign joltc;
JPH_CharacterVirtual_Update :: (character: *JPH_CharacterVirtual, deltaTime: float, layer: JPH_ObjectLayer, system: *JPH_PhysicsSystem, bodyFilter: *JPH_BodyFilter, shapeFilter: *JPH_ShapeFilter) -> void #foreign joltc;

JPH_CharacterVirtual_ExtendedUpdate :: (character: *JPH_CharacterVirtual, deltaTime: float, settings: *JPH_ExtendedUpdateSettings, layer: JPH_ObjectLayer, system: *JPH_PhysicsSystem, bodyFilter: *JPH_BodyFilter, shapeFilter: *JPH_ShapeFilter) -> void #foreign joltc;

JPH_CharacterVirtual_RefreshContacts :: (character: *JPH_CharacterVirtual, layer: JPH_ObjectLayer, system: *JPH_PhysicsSystem, bodyFilter: *JPH_BodyFilter, shapeFilter: *JPH_ShapeFilter) -> void #foreign joltc;

JPH_CharacterVirtual_CanWalkStairs :: (character: *JPH_CharacterVirtual, linearVelocity: *JPH_Vec3) -> bool #foreign joltc;
JPH_CharacterVirtual_WalkStairs :: (character: *JPH_CharacterVirtual, deltaTime: float, stepUp: *JPH_Vec3, stepForward: *JPH_Vec3, stepForwardTest: *JPH_Vec3, stepDownExtra: *JPH_Vec3, layer: JPH_ObjectLayer, system: *JPH_PhysicsSystem, bodyFilter: *JPH_BodyFilter, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;

JPH_CharacterVirtual_StickToFloor :: (character: *JPH_CharacterVirtual, stepDown: *JPH_Vec3, layer: JPH_ObjectLayer, system: *JPH_PhysicsSystem, bodyFilter: *JPH_BodyFilter, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;

JPH_CharacterVirtual_UpdateGroundVelocity :: (character: *JPH_CharacterVirtual) -> void #foreign joltc;
JPH_CharacterVirtual_SetShape :: (character: *JPH_CharacterVirtual, shape: *JPH_Shape, maxPenetrationDepth: float, layer: JPH_ObjectLayer, system: *JPH_PhysicsSystem, bodyFilter: *JPH_BodyFilter, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;
JPH_CharacterVirtual_SetInnerBodyShape :: (character: *JPH_CharacterVirtual, shape: *JPH_Shape) -> void #foreign joltc;

JPH_CharacterVirtual_GetNumActiveContacts :: (character: *JPH_CharacterVirtual) -> u32 #foreign joltc;
JPH_CharacterVirtual_GetActiveContact :: (character: *JPH_CharacterVirtual, index: u32, result: *JPH_CharacterVirtualContact) -> void #foreign joltc;

JPH_CharacterVirtual_HasCollidedWithBody :: (character: *JPH_CharacterVirtual, body: JPH_BodyID) -> bool #foreign joltc;
JPH_CharacterVirtual_HasCollidedWith :: (character: *JPH_CharacterVirtual, other: JPH_CharacterID) -> bool #foreign joltc;
JPH_CharacterVirtual_HasCollidedWithCharacter :: (character: *JPH_CharacterVirtual, other: *JPH_CharacterVirtual) -> bool #foreign joltc;

/* CharacterContactListener */
JPH_CharacterContactListener_Procs :: struct {
    OnAdjustBodyVelocity:        #type (userData: *void, character: *JPH_CharacterVirtual, body2: *JPH_Body, ioLinearVelocity: *JPH_Vec3, ioAngularVelocity: *JPH_Vec3) -> void #c_call;

    OnContactValidate:           #type (userData: *void, character: *JPH_CharacterVirtual, bodyID2: JPH_BodyID, subShapeID2: JPH_SubShapeID) -> bool #c_call;

    OnCharacterContactValidate:  #type (userData: *void, character: *JPH_CharacterVirtual, otherCharacter: *JPH_CharacterVirtual, subShapeID2: JPH_SubShapeID) -> bool #c_call;

    OnContactAdded:              #type (userData: *void, character: *JPH_CharacterVirtual, bodyID2: JPH_BodyID, subShapeID2: JPH_SubShapeID, contactPosition: *JPH_RVec3, contactNormal: *JPH_Vec3, ioSettings: *JPH_CharacterContactSettings) -> void #c_call;

    OnContactPersisted:          #type (userData: *void, character: *JPH_CharacterVirtual, bodyID2: JPH_BodyID, subShapeID2: JPH_SubShapeID, contactPosition: *JPH_RVec3, contactNormal: *JPH_Vec3, ioSettings: *JPH_CharacterContactSettings) -> void #c_call;

    OnContactRemoved:            #type (userData: *void, character: *JPH_CharacterVirtual, bodyID2: JPH_BodyID, subShapeID2: JPH_SubShapeID) -> void #c_call;

    OnCharacterContactAdded:     #type (userData: *void, character: *JPH_CharacterVirtual, otherCharacter: *JPH_CharacterVirtual, subShapeID2: JPH_SubShapeID, contactPosition: *JPH_RVec3, contactNormal: *JPH_Vec3, ioSettings: *JPH_CharacterContactSettings) -> void #c_call;

    OnCharacterContactPersisted: #type (userData: *void, character: *JPH_CharacterVirtual, otherCharacter: *JPH_CharacterVirtual, subShapeID2: JPH_SubShapeID, contactPosition: *JPH_RVec3, contactNormal: *JPH_Vec3, ioSettings: *JPH_CharacterContactSettings) -> void #c_call;

    OnCharacterContactRemoved:   #type (userData: *void, character: *JPH_CharacterVirtual, otherCharacterID: JPH_CharacterID, subShapeID2: JPH_SubShapeID) -> void #c_call;

    OnContactSolve:              #type (userData: *void, character: *JPH_CharacterVirtual, bodyID2: JPH_BodyID, subShapeID2: JPH_SubShapeID, contactPosition: *JPH_RVec3, contactNormal: *JPH_Vec3, contactVelocity: *JPH_Vec3, contactMaterial: *JPH_PhysicsMaterial, characterVelocity: *JPH_Vec3, newCharacterVelocity: *JPH_Vec3) -> void #c_call;

    OnCharacterContactSolve:     #type (userData: *void, character: *JPH_CharacterVirtual, otherCharacter: *JPH_CharacterVirtual, subShapeID2: JPH_SubShapeID, contactPosition: *JPH_RVec3, contactNormal: *JPH_Vec3, contactVelocity: *JPH_Vec3, contactMaterial: *JPH_PhysicsMaterial, characterVelocity: *JPH_Vec3, newCharacterVelocity: *JPH_Vec3) -> void #c_call;
}

JPH_CharacterContactListener_SetProcs :: (procs: *JPH_CharacterContactListener_Procs) -> void #foreign joltc;
JPH_CharacterContactListener_Create :: (userData: *void) -> *JPH_CharacterContactListener #foreign joltc;
JPH_CharacterContactListener_Destroy :: (listener: *JPH_CharacterContactListener) -> void #foreign joltc;

/* JPH_CharacterVsCharacterCollision */
JPH_CharacterVsCharacterCollision_Procs :: struct {
    CollideCharacter: #type (userData: *void, character: *JPH_CharacterVirtual, centerOfMassTransform: *JPH_RMatrix4x4, collideShapeSettings: *JPH_CollideShapeSettings, baseOffset: *JPH_RVec3) -> void #c_call;

    CastCharacter:    #type (userData: *void, character: *JPH_CharacterVirtual, centerOfMassTransform: *JPH_RMatrix4x4, direction: *JPH_Vec3, shapeCastSettings: *JPH_ShapeCastSettings, baseOffset: *JPH_RVec3) -> void #c_call;
}

JPH_CharacterVsCharacterCollision_SetProcs :: (procs: *JPH_CharacterVsCharacterCollision_Procs) -> void #foreign joltc;
JPH_CharacterVsCharacterCollision_Create :: (userData: *void) -> *JPH_CharacterVsCharacterCollision #foreign joltc;
JPH_CharacterVsCharacterCollision_CreateSimple :: () -> *JPH_CharacterVsCharacterCollision #foreign joltc;
JPH_CharacterVsCharacterCollisionSimple_AddCharacter :: (characterVsCharacter: *JPH_CharacterVsCharacterCollision, character: *JPH_CharacterVirtual) -> void #foreign joltc;
JPH_CharacterVsCharacterCollisionSimple_RemoveCharacter :: (characterVsCharacter: *JPH_CharacterVsCharacterCollision, character: *JPH_CharacterVirtual) -> void #foreign joltc;
JPH_CharacterVsCharacterCollision_Destroy :: (listener: *JPH_CharacterVsCharacterCollision) -> void #foreign joltc;

/* CollisionDispatch */
JPH_CollisionDispatch_CollideShapeVsShape :: (shape1: *JPH_Shape, shape2: *JPH_Shape, scale1: *JPH_Vec3, scale2: *JPH_Vec3, centerOfMassTransform1: *JPH_Matrix4x4, centerOfMassTransform2: *JPH_Matrix4x4, collideShapeSettings: *JPH_CollideShapeSettings, callback: JPH_CollideShapeCollectorCallback, userData: *void, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;

JPH_CollisionDispatch_CastShapeVsShapeLocalSpace :: (direction: *JPH_Vec3, shape1: *JPH_Shape, shape2: *JPH_Shape, scale1InShape2LocalSpace: *JPH_Vec3, scale2: *JPH_Vec3, centerOfMassTransform1InShape2LocalSpace: *JPH_Matrix4x4, centerOfMassWorldTransform2: *JPH_Matrix4x4, shapeCastSettings: *JPH_ShapeCastSettings, callback: JPH_CastShapeCollectorCallback, userData: *void, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;

JPH_CollisionDispatch_CastShapeVsShapeWorldSpace :: (direction: *JPH_Vec3, shape1: *JPH_Shape, shape2: *JPH_Shape, scale1: *JPH_Vec3, inScale2: *JPH_Vec3, centerOfMassWorldTransform1: *JPH_Matrix4x4, centerOfMassWorldTransform2: *JPH_Matrix4x4, shapeCastSettings: *JPH_ShapeCastSettings, callback: JPH_CastShapeCollectorCallback, userData: *void, shapeFilter: *JPH_ShapeFilter) -> bool #foreign joltc;

/* DebugRenderer */
JPH_DebugRenderer_Procs :: struct {
    DrawLine:     #type (userData: *void, from: *JPH_RVec3, to: *JPH_RVec3, color: JPH_Color) -> void #c_call;
    DrawTriangle: #type (userData: *void, v1: *JPH_RVec3, v2: *JPH_RVec3, v3: *JPH_RVec3, color: JPH_Color, castShadow: JPH_DebugRenderer_CastShadow) -> void #c_call;
    DrawText3D:   #type (userData: *void, position: *JPH_RVec3, str: *u8, color: JPH_Color, height: float) -> void #c_call;
}

JPH_DebugRenderer_SetProcs :: (procs: *JPH_DebugRenderer_Procs) -> void #foreign joltc;
JPH_DebugRenderer_Create :: (userData: *void) -> *JPH_DebugRenderer #foreign joltc;
JPH_DebugRenderer_Destroy :: (renderer: *JPH_DebugRenderer) -> void #foreign joltc;
JPH_DebugRenderer_NextFrame :: (renderer: *JPH_DebugRenderer) -> void #foreign joltc;
JPH_DebugRenderer_SetCameraPos :: (renderer: *JPH_DebugRenderer, position: *JPH_RVec3) -> void #foreign joltc;

JPH_DebugRenderer_DrawLine :: (renderer: *JPH_DebugRenderer, from: *JPH_RVec3, to: *JPH_RVec3, color: JPH_Color) -> void #foreign joltc;
JPH_DebugRenderer_DrawWireBox :: (renderer: *JPH_DebugRenderer, box: *JPH_AABox, color: JPH_Color) -> void #foreign joltc;
JPH_DebugRenderer_DrawWireBox2 :: (renderer: *JPH_DebugRenderer, matrix: *JPH_RMatrix4x4, box: *JPH_AABox, color: JPH_Color) -> void #foreign joltc;
JPH_DebugRenderer_DrawMarker :: (renderer: *JPH_DebugRenderer, position: *JPH_RVec3, color: JPH_Color, size: float) -> void #foreign joltc;
JPH_DebugRenderer_DrawArrow :: (renderer: *JPH_DebugRenderer, from: *JPH_RVec3, to: *JPH_RVec3, color: JPH_Color, size: float) -> void #foreign joltc;
JPH_DebugRenderer_DrawCoordinateSystem :: (renderer: *JPH_DebugRenderer, matrix: *JPH_RMatrix4x4, size: float) -> void #foreign joltc;
JPH_DebugRenderer_DrawPlane :: (renderer: *JPH_DebugRenderer, point: *JPH_RVec3, normal: *JPH_Vec3, color: JPH_Color, size: float) -> void #foreign joltc;
JPH_DebugRenderer_DrawWireTriangle :: (renderer: *JPH_DebugRenderer, v1: *JPH_RVec3, v2: *JPH_RVec3, v3: *JPH_RVec3, color: JPH_Color) -> void #foreign joltc;
JPH_DebugRenderer_DrawWireSphere :: (renderer: *JPH_DebugRenderer, center: *JPH_RVec3, radius: float, color: JPH_Color, level: s32) -> void #foreign joltc;
JPH_DebugRenderer_DrawWireUnitSphere :: (renderer: *JPH_DebugRenderer, matrix: *JPH_RMatrix4x4, color: JPH_Color, level: s32) -> void #foreign joltc;
JPH_DebugRenderer_DrawTriangle :: (renderer: *JPH_DebugRenderer, v1: *JPH_RVec3, v2: *JPH_RVec3, v3: *JPH_RVec3, color: JPH_Color, castShadow: JPH_DebugRenderer_CastShadow) -> void #foreign joltc;
JPH_DebugRenderer_DrawBox :: (renderer: *JPH_DebugRenderer, box: *JPH_AABox, color: JPH_Color, castShadow: JPH_DebugRenderer_CastShadow, drawMode: JPH_DebugRenderer_DrawMode) -> void #foreign joltc;
JPH_DebugRenderer_DrawBox2 :: (renderer: *JPH_DebugRenderer, matrix: *JPH_RMatrix4x4, box: *JPH_AABox, color: JPH_Color, castShadow: JPH_DebugRenderer_CastShadow, drawMode: JPH_DebugRenderer_DrawMode) -> void #foreign joltc;
JPH_DebugRenderer_DrawSphere :: (renderer: *JPH_DebugRenderer, center: *JPH_RVec3, radius: float, color: JPH_Color, castShadow: JPH_DebugRenderer_CastShadow, drawMode: JPH_DebugRenderer_DrawMode) -> void #foreign joltc;
JPH_DebugRenderer_DrawUnitSphere :: (renderer: *JPH_DebugRenderer, matrix: JPH_RMatrix4x4, color: JPH_Color, castShadow: JPH_DebugRenderer_CastShadow, drawMode: JPH_DebugRenderer_DrawMode) -> void #foreign joltc;
JPH_DebugRenderer_DrawCapsule :: (renderer: *JPH_DebugRenderer, matrix: *JPH_RMatrix4x4, halfHeightOfCylinder: float, radius: float, color: JPH_Color, castShadow: JPH_DebugRenderer_CastShadow, drawMode: JPH_DebugRenderer_DrawMode) -> void #foreign joltc;
JPH_DebugRenderer_DrawCylinder :: (renderer: *JPH_DebugRenderer, matrix: *JPH_RMatrix4x4, halfHeight: float, radius: float, color: JPH_Color, castShadow: JPH_DebugRenderer_CastShadow, drawMode: JPH_DebugRenderer_DrawMode) -> void #foreign joltc;
JPH_DebugRenderer_DrawOpenCone :: (renderer: *JPH_DebugRenderer, top: *JPH_RVec3, axis: *JPH_Vec3, perpendicular: *JPH_Vec3, halfAngle: float, length: float, color: JPH_Color, castShadow: JPH_DebugRenderer_CastShadow, drawMode: JPH_DebugRenderer_DrawMode) -> void #foreign joltc;
JPH_DebugRenderer_DrawSwingConeLimits :: (renderer: *JPH_DebugRenderer, matrix: *JPH_RMatrix4x4, swingYHalfAngle: float, swingZHalfAngle: float, edgeLength: float, color: JPH_Color, castShadow: JPH_DebugRenderer_CastShadow, drawMode: JPH_DebugRenderer_DrawMode) -> void #foreign joltc;
JPH_DebugRenderer_DrawSwingPyramidLimits :: (renderer: *JPH_DebugRenderer, matrix: *JPH_RMatrix4x4, minSwingYAngle: float, maxSwingYAngle: float, minSwingZAngle: float, maxSwingZAngle: float, edgeLength: float, color: JPH_Color, castShadow: JPH_DebugRenderer_CastShadow, drawMode: JPH_DebugRenderer_DrawMode) -> void #foreign joltc;
JPH_DebugRenderer_DrawPie :: (renderer: *JPH_DebugRenderer, center: *JPH_RVec3, radius: float, normal: *JPH_Vec3, axis: *JPH_Vec3, minAngle: float, maxAngle: float, color: JPH_Color, castShadow: JPH_DebugRenderer_CastShadow, drawMode: JPH_DebugRenderer_DrawMode) -> void #foreign joltc;
JPH_DebugRenderer_DrawTaperedCylinder :: (renderer: *JPH_DebugRenderer, inMatrix: *JPH_RMatrix4x4, top: float, bottom: float, topRadius: float, bottomRadius: float, color: JPH_Color, castShadow: JPH_DebugRenderer_CastShadow, drawMode: JPH_DebugRenderer_DrawMode) -> void #foreign joltc;

/* Skeleton */
JPH_SkeletonJoint :: struct {
    name:             *u8;
    parentName:       *u8;
    parentJointIndex: s32;
}

JPH_Skeleton_Create :: () -> *JPH_Skeleton #foreign joltc;
JPH_Skeleton_Destroy :: (skeleton: *JPH_Skeleton) -> void #foreign joltc;

JPH_Skeleton_AddJoint :: (skeleton: *JPH_Skeleton, name: *u8) -> u32 #foreign joltc;
JPH_Skeleton_AddJoint2 :: (skeleton: *JPH_Skeleton, name: *u8, parentIndex: s32) -> u32 #foreign joltc;
JPH_Skeleton_AddJoint3 :: (skeleton: *JPH_Skeleton, name: *u8, parentName: *u8) -> u32 #foreign joltc;
JPH_Skeleton_GetJointCount :: (skeleton: *JPH_Skeleton) -> s32 #foreign joltc;
JPH_Skeleton_GetJoint :: (skeleton: *JPH_Skeleton, index: s32, joint: *JPH_SkeletonJoint) -> void #foreign joltc;
JPH_Skeleton_GetJointIndex :: (skeleton: *JPH_Skeleton, name: *u8) -> s32 #foreign joltc;
JPH_Skeleton_CalculateParentJointIndices :: (skeleton: *JPH_Skeleton) -> void #foreign joltc;
JPH_Skeleton_AreJointsCorrectlyOrdered :: (skeleton: *JPH_Skeleton) -> bool #foreign joltc;

/* Ragdoll */
JPH_RagdollSettings_Create :: () -> *JPH_RagdollSettings #foreign joltc;
JPH_RagdollSettings_Destroy :: (settings: *JPH_RagdollSettings) -> void #foreign joltc;

JPH_RagdollSettings_GetSkeleton :: (character: *JPH_RagdollSettings) -> *JPH_Skeleton #foreign joltc;
JPH_RagdollSettings_SetSkeleton :: (character: *JPH_RagdollSettings, skeleton: *JPH_Skeleton) -> void #foreign joltc;
JPH_RagdollSettings_Stabilize :: (settings: *JPH_RagdollSettings) -> bool #foreign joltc;
JPH_RagdollSettings_DisableParentChildCollisions :: (settings: *JPH_RagdollSettings, jointMatrices: *JPH_Matrix4x4, minSeparationDistance: float) -> void #foreign joltc;
JPH_RagdollSettings_CalculateBodyIndexToConstraintIndex :: (settings: *JPH_RagdollSettings) -> void #foreign joltc;
JPH_RagdollSettings_GetConstraintIndexForBodyIndex :: (settings: *JPH_RagdollSettings, bodyIndex: s32) -> s32 #foreign joltc;
JPH_RagdollSettings_CalculateConstraintIndexToBodyIdxPair :: (settings: *JPH_RagdollSettings) -> void #foreign joltc;

JPH_RagdollSettings_CreateRagdoll :: (settings: *JPH_RagdollSettings, system: *JPH_PhysicsSystem, collisionGroup: JPH_CollisionGroupID, userData: u64) -> *JPH_Ragdoll #foreign joltc;
JPH_Ragdoll_Destroy :: (ragdoll: *JPH_Ragdoll) -> void #foreign joltc;
JPH_Ragdoll_AddToPhysicsSystem :: (ragdoll: *JPH_Ragdoll, activationMode: JPH_Activation, lockBodies: bool) -> void #foreign joltc;
JPH_Ragdoll_RemoveFromPhysicsSystem :: (ragdoll: *JPH_Ragdoll, lockBodies: bool) -> void #foreign joltc;
JPH_Ragdoll_Activate :: (ragdoll: *JPH_Ragdoll, lockBodies: bool) -> void #foreign joltc;
JPH_Ragdoll_IsActive :: (ragdoll: *JPH_Ragdoll, lockBodies: bool) -> bool #foreign joltc;
JPH_Ragdoll_ResetWarmStart :: (ragdoll: *JPH_Ragdoll) -> void #foreign joltc;

/* JPH_EstimateCollisionResponse */
JPH_EstimateCollisionResponse :: (body1: *JPH_Body, body2: *JPH_Body, manifold: *JPH_ContactManifold, combinedFriction: float, combinedRestitution: float, minVelocityForRestitution: float, numIterations: u32, result: *JPH_CollisionEstimationResult) -> void #foreign joltc;

#scope_file

#import "Basic"; // For assert

joltc :: #library,no_dll "windows/joltc";

// TODO: These libs are required to build the static debug version of joltc.
// Have a compile check to do the loads only in that case.
// TODO: I tried to have them in the module.jai but I have link error
// for some reason it only works here?
jolt     :: #library,no_dll,link_always "windows/Jolt";
ucrtd    :: #library,system,link_always "ucrtd";
msvcmrtd :: #library,system,link_always "msvcmrtd";
libcpmtd :: #library,system,link_always "libcpmtd";

#run {
    {
        info := type_info(JPH_Vec3);
        for info.members {
            if it.name == {
                case "x";
                    assert(it.offset_in_bytes == 0, "JPH_Vec3.x has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Vec3.x has unexpected size % instead of 4", it.type.runtime_size);
                case "y";
                    assert(it.offset_in_bytes == 4, "JPH_Vec3.y has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Vec3.y has unexpected size % instead of 4", it.type.runtime_size);
                case "z";
                    assert(it.offset_in_bytes == 8, "JPH_Vec3.z has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Vec3.z has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_Vec3) == 12, "JPH_Vec3 has size % instead of 12", size_of(JPH_Vec3));
    }

    {
        info := type_info(JPH_Vec4);
        for info.members {
            if it.name == {
                case "x";
                    assert(it.offset_in_bytes == 0, "JPH_Vec4.x has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Vec4.x has unexpected size % instead of 4", it.type.runtime_size);
                case "y";
                    assert(it.offset_in_bytes == 4, "JPH_Vec4.y has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Vec4.y has unexpected size % instead of 4", it.type.runtime_size);
                case "z";
                    assert(it.offset_in_bytes == 8, "JPH_Vec4.z has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Vec4.z has unexpected size % instead of 4", it.type.runtime_size);
                case "w";
                    assert(it.offset_in_bytes == 12, "JPH_Vec4.w has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Vec4.w has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_Vec4) == 16, "JPH_Vec4 has size % instead of 16", size_of(JPH_Vec4));
    }

    {
        info := type_info(JPH_Quat);
        for info.members {
            if it.name == {
                case "x";
                    assert(it.offset_in_bytes == 0, "JPH_Quat.x has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Quat.x has unexpected size % instead of 4", it.type.runtime_size);
                case "y";
                    assert(it.offset_in_bytes == 4, "JPH_Quat.y has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Quat.y has unexpected size % instead of 4", it.type.runtime_size);
                case "z";
                    assert(it.offset_in_bytes == 8, "JPH_Quat.z has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Quat.z has unexpected size % instead of 4", it.type.runtime_size);
                case "w";
                    assert(it.offset_in_bytes == 12, "JPH_Quat.w has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Quat.w has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_Quat) == 16, "JPH_Quat has size % instead of 16", size_of(JPH_Quat));
    }

    {
        info := type_info(JPH_Plane);
        for info.members {
            if it.name == {
                case "normal";
                    assert(it.offset_in_bytes == 0, "JPH_Plane.normal has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_Plane.normal has unexpected size % instead of 12", it.type.runtime_size);
                case "distance";
                    assert(it.offset_in_bytes == 12, "JPH_Plane.distance has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Plane.distance has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_Plane) == 16, "JPH_Plane has size % instead of 16", size_of(JPH_Plane));
    }

    {
        info := type_info(JPH_Matrix4x4);
        for info.members {
            if it.name == {
                case "m11";
                    assert(it.offset_in_bytes == 0, "JPH_Matrix4x4.m11 has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m11 has unexpected size % instead of 4", it.type.runtime_size);
                case "m12";
                    assert(it.offset_in_bytes == 4, "JPH_Matrix4x4.m12 has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m12 has unexpected size % instead of 4", it.type.runtime_size);
                case "m13";
                    assert(it.offset_in_bytes == 8, "JPH_Matrix4x4.m13 has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m13 has unexpected size % instead of 4", it.type.runtime_size);
                case "m14";
                    assert(it.offset_in_bytes == 12, "JPH_Matrix4x4.m14 has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m14 has unexpected size % instead of 4", it.type.runtime_size);
                case "m21";
                    assert(it.offset_in_bytes == 16, "JPH_Matrix4x4.m21 has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m21 has unexpected size % instead of 4", it.type.runtime_size);
                case "m22";
                    assert(it.offset_in_bytes == 20, "JPH_Matrix4x4.m22 has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m22 has unexpected size % instead of 4", it.type.runtime_size);
                case "m23";
                    assert(it.offset_in_bytes == 24, "JPH_Matrix4x4.m23 has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m23 has unexpected size % instead of 4", it.type.runtime_size);
                case "m24";
                    assert(it.offset_in_bytes == 28, "JPH_Matrix4x4.m24 has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m24 has unexpected size % instead of 4", it.type.runtime_size);
                case "m31";
                    assert(it.offset_in_bytes == 32, "JPH_Matrix4x4.m31 has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m31 has unexpected size % instead of 4", it.type.runtime_size);
                case "m32";
                    assert(it.offset_in_bytes == 36, "JPH_Matrix4x4.m32 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m32 has unexpected size % instead of 4", it.type.runtime_size);
                case "m33";
                    assert(it.offset_in_bytes == 40, "JPH_Matrix4x4.m33 has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m33 has unexpected size % instead of 4", it.type.runtime_size);
                case "m34";
                    assert(it.offset_in_bytes == 44, "JPH_Matrix4x4.m34 has unexpected offset % instead of 44", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m34 has unexpected size % instead of 4", it.type.runtime_size);
                case "m41";
                    assert(it.offset_in_bytes == 48, "JPH_Matrix4x4.m41 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m41 has unexpected size % instead of 4", it.type.runtime_size);
                case "m42";
                    assert(it.offset_in_bytes == 52, "JPH_Matrix4x4.m42 has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m42 has unexpected size % instead of 4", it.type.runtime_size);
                case "m43";
                    assert(it.offset_in_bytes == 56, "JPH_Matrix4x4.m43 has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m43 has unexpected size % instead of 4", it.type.runtime_size);
                case "m44";
                    assert(it.offset_in_bytes == 60, "JPH_Matrix4x4.m44 has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Matrix4x4.m44 has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_Matrix4x4) == 64, "JPH_Matrix4x4 has size % instead of 64", size_of(JPH_Matrix4x4));
    }

    {
        info := type_info(JPH_AABox);
        for info.members {
            if it.name == {
                case "min";
                    assert(it.offset_in_bytes == 0, "JPH_AABox.min has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_AABox.min has unexpected size % instead of 12", it.type.runtime_size);
                case "max";
                    assert(it.offset_in_bytes == 12, "JPH_AABox.max has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_AABox.max has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_AABox) == 24, "JPH_AABox has size % instead of 24", size_of(JPH_AABox));
    }

    {
        info := type_info(JPH_Triangle);
        for info.members {
            if it.name == {
                case "v1";
                    assert(it.offset_in_bytes == 0, "JPH_Triangle.v1 has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_Triangle.v1 has unexpected size % instead of 12", it.type.runtime_size);
                case "v2";
                    assert(it.offset_in_bytes == 12, "JPH_Triangle.v2 has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_Triangle.v2 has unexpected size % instead of 12", it.type.runtime_size);
                case "v3";
                    assert(it.offset_in_bytes == 24, "JPH_Triangle.v3 has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_Triangle.v3 has unexpected size % instead of 12", it.type.runtime_size);
                case "materialIndex";
                    assert(it.offset_in_bytes == 36, "JPH_Triangle.materialIndex has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_Triangle.materialIndex has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_Triangle) == 40, "JPH_Triangle has size % instead of 40", size_of(JPH_Triangle));
    }

    {
        info := type_info(JPH_IndexedTriangleNoMaterial);
        for info.members {
            if it.name == {
                case "i1";
                    assert(it.offset_in_bytes == 0, "JPH_IndexedTriangleNoMaterial.i1 has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_IndexedTriangleNoMaterial.i1 has unexpected size % instead of 4", it.type.runtime_size);
                case "i2";
                    assert(it.offset_in_bytes == 4, "JPH_IndexedTriangleNoMaterial.i2 has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_IndexedTriangleNoMaterial.i2 has unexpected size % instead of 4", it.type.runtime_size);
                case "i3";
                    assert(it.offset_in_bytes == 8, "JPH_IndexedTriangleNoMaterial.i3 has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_IndexedTriangleNoMaterial.i3 has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_IndexedTriangleNoMaterial) == 12, "JPH_IndexedTriangleNoMaterial has size % instead of 12", size_of(JPH_IndexedTriangleNoMaterial));
    }

    {
        info := type_info(JPH_IndexedTriangle);
        for info.members {
            if it.name == {
                case "i1";
                    assert(it.offset_in_bytes == 0, "JPH_IndexedTriangle.i1 has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_IndexedTriangle.i1 has unexpected size % instead of 4", it.type.runtime_size);
                case "i2";
                    assert(it.offset_in_bytes == 4, "JPH_IndexedTriangle.i2 has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_IndexedTriangle.i2 has unexpected size % instead of 4", it.type.runtime_size);
                case "i3";
                    assert(it.offset_in_bytes == 8, "JPH_IndexedTriangle.i3 has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_IndexedTriangle.i3 has unexpected size % instead of 4", it.type.runtime_size);
                case "materialIndex";
                    assert(it.offset_in_bytes == 12, "JPH_IndexedTriangle.materialIndex has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_IndexedTriangle.materialIndex has unexpected size % instead of 4", it.type.runtime_size);
                case "userData";
                    assert(it.offset_in_bytes == 16, "JPH_IndexedTriangle.userData has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_IndexedTriangle.userData has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_IndexedTriangle) == 20, "JPH_IndexedTriangle has size % instead of 20", size_of(JPH_IndexedTriangle));
    }

    {
        info := type_info(JPH_MassProperties);
        for info.members {
            if it.name == {
                case "mass";
                    assert(it.offset_in_bytes == 0, "JPH_MassProperties.mass has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_MassProperties.mass has unexpected size % instead of 4", it.type.runtime_size);
                case "inertia";
                    assert(it.offset_in_bytes == 4, "JPH_MassProperties.inertia has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 64, "JPH_MassProperties.inertia has unexpected size % instead of 64", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_MassProperties) == 68, "JPH_MassProperties has size % instead of 68", size_of(JPH_MassProperties));
    }

    {
        info := type_info(JPH_CollideSettingsBase);
        for info.members {
            if it.name == {
                case "activeEdgeMode";
                    assert(it.offset_in_bytes == 0, "JPH_CollideSettingsBase.activeEdgeMode has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollideSettingsBase.activeEdgeMode has unexpected size % instead of 4", it.type.runtime_size);
                case "collectFacesMode";
                    assert(it.offset_in_bytes == 4, "JPH_CollideSettingsBase.collectFacesMode has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollideSettingsBase.collectFacesMode has unexpected size % instead of 4", it.type.runtime_size);
                case "collisionTolerance";
                    assert(it.offset_in_bytes == 8, "JPH_CollideSettingsBase.collisionTolerance has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollideSettingsBase.collisionTolerance has unexpected size % instead of 4", it.type.runtime_size);
                case "penetrationTolerance";
                    assert(it.offset_in_bytes == 12, "JPH_CollideSettingsBase.penetrationTolerance has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollideSettingsBase.penetrationTolerance has unexpected size % instead of 4", it.type.runtime_size);
                case "activeEdgeMovementDirection";
                    assert(it.offset_in_bytes == 16, "JPH_CollideSettingsBase.activeEdgeMovementDirection has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CollideSettingsBase.activeEdgeMovementDirection has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_CollideSettingsBase) == 28, "JPH_CollideSettingsBase has size % instead of 28", size_of(JPH_CollideSettingsBase));
    }

    {
        info := type_info(JPH_CollideShapeSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "JPH_CollideShapeSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 28, "JPH_CollideShapeSettings.base has unexpected size % instead of 28", it.type.runtime_size);
                case "maxSeparationDistance";
                    assert(it.offset_in_bytes == 28, "JPH_CollideShapeSettings.maxSeparationDistance has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollideShapeSettings.maxSeparationDistance has unexpected size % instead of 4", it.type.runtime_size);
                case "backFaceMode";
                    assert(it.offset_in_bytes == 32, "JPH_CollideShapeSettings.backFaceMode has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollideShapeSettings.backFaceMode has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_CollideShapeSettings) == 36, "JPH_CollideShapeSettings has size % instead of 36", size_of(JPH_CollideShapeSettings));
    }

    {
        info := type_info(JPH_ShapeCastSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "JPH_ShapeCastSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 28, "JPH_ShapeCastSettings.base has unexpected size % instead of 28", it.type.runtime_size);
                case "backFaceModeTriangles";
                    assert(it.offset_in_bytes == 28, "JPH_ShapeCastSettings.backFaceModeTriangles has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ShapeCastSettings.backFaceModeTriangles has unexpected size % instead of 4", it.type.runtime_size);
                case "backFaceModeConvex";
                    assert(it.offset_in_bytes == 32, "JPH_ShapeCastSettings.backFaceModeConvex has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ShapeCastSettings.backFaceModeConvex has unexpected size % instead of 4", it.type.runtime_size);
                case "useShrunkenShapeAndConvexRadius";
                    assert(it.offset_in_bytes == 36, "JPH_ShapeCastSettings.useShrunkenShapeAndConvexRadius has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_ShapeCastSettings.useShrunkenShapeAndConvexRadius has unexpected size % instead of 1", it.type.runtime_size);
                case "returnDeepestPoint";
                    assert(it.offset_in_bytes == 37, "JPH_ShapeCastSettings.returnDeepestPoint has unexpected offset % instead of 37", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_ShapeCastSettings.returnDeepestPoint has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_ShapeCastSettings) == 40, "JPH_ShapeCastSettings has size % instead of 40", size_of(JPH_ShapeCastSettings));
    }

    {
        info := type_info(JPH_RayCastSettings);
        for info.members {
            if it.name == {
                case "backFaceModeTriangles";
                    assert(it.offset_in_bytes == 0, "JPH_RayCastSettings.backFaceModeTriangles has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_RayCastSettings.backFaceModeTriangles has unexpected size % instead of 4", it.type.runtime_size);
                case "backFaceModeConvex";
                    assert(it.offset_in_bytes == 4, "JPH_RayCastSettings.backFaceModeConvex has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_RayCastSettings.backFaceModeConvex has unexpected size % instead of 4", it.type.runtime_size);
                case "treatConvexAsSolid";
                    assert(it.offset_in_bytes == 8, "JPH_RayCastSettings.treatConvexAsSolid has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_RayCastSettings.treatConvexAsSolid has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_RayCastSettings) == 12, "JPH_RayCastSettings has size % instead of 12", size_of(JPH_RayCastSettings));
    }

    {
        info := type_info(JPH_SpringSettings);
        for info.members {
            if it.name == {
                case "mode";
                    assert(it.offset_in_bytes == 0, "JPH_SpringSettings.mode has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SpringSettings.mode has unexpected size % instead of 4", it.type.runtime_size);
                case "frequencyOrStiffness";
                    assert(it.offset_in_bytes == 4, "JPH_SpringSettings.frequencyOrStiffness has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SpringSettings.frequencyOrStiffness has unexpected size % instead of 4", it.type.runtime_size);
                case "damping";
                    assert(it.offset_in_bytes == 8, "JPH_SpringSettings.damping has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SpringSettings.damping has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_SpringSettings) == 12, "JPH_SpringSettings has size % instead of 12", size_of(JPH_SpringSettings));
    }

    {
        info := type_info(JPH_MotorSettings);
        for info.members {
            if it.name == {
                case "springSettings";
                    assert(it.offset_in_bytes == 0, "JPH_MotorSettings.springSettings has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_MotorSettings.springSettings has unexpected size % instead of 12", it.type.runtime_size);
                case "minForceLimit";
                    assert(it.offset_in_bytes == 12, "JPH_MotorSettings.minForceLimit has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_MotorSettings.minForceLimit has unexpected size % instead of 4", it.type.runtime_size);
                case "maxForceLimit";
                    assert(it.offset_in_bytes == 16, "JPH_MotorSettings.maxForceLimit has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_MotorSettings.maxForceLimit has unexpected size % instead of 4", it.type.runtime_size);
                case "minTorqueLimit";
                    assert(it.offset_in_bytes == 20, "JPH_MotorSettings.minTorqueLimit has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_MotorSettings.minTorqueLimit has unexpected size % instead of 4", it.type.runtime_size);
                case "maxTorqueLimit";
                    assert(it.offset_in_bytes == 24, "JPH_MotorSettings.maxTorqueLimit has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_MotorSettings.maxTorqueLimit has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_MotorSettings) == 28, "JPH_MotorSettings has size % instead of 28", size_of(JPH_MotorSettings));
    }

    {
        info := type_info(JPH_SubShapeIDPair);
        for info.members {
            if it.name == {
                case "Body1ID";
                    assert(it.offset_in_bytes == 0, "JPH_SubShapeIDPair.Body1ID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SubShapeIDPair.Body1ID has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID1";
                    assert(it.offset_in_bytes == 4, "JPH_SubShapeIDPair.subShapeID1 has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SubShapeIDPair.subShapeID1 has unexpected size % instead of 4", it.type.runtime_size);
                case "Body2ID";
                    assert(it.offset_in_bytes == 8, "JPH_SubShapeIDPair.Body2ID has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SubShapeIDPair.Body2ID has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID2";
                    assert(it.offset_in_bytes == 12, "JPH_SubShapeIDPair.subShapeID2 has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SubShapeIDPair.subShapeID2 has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_SubShapeIDPair) == 16, "JPH_SubShapeIDPair has size % instead of 16", size_of(JPH_SubShapeIDPair));
    }

    {
        info := type_info(JPH_BroadPhaseCastResult);
        for info.members {
            if it.name == {
                case "bodyID";
                    assert(it.offset_in_bytes == 0, "JPH_BroadPhaseCastResult.bodyID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_BroadPhaseCastResult.bodyID has unexpected size % instead of 4", it.type.runtime_size);
                case "fraction";
                    assert(it.offset_in_bytes == 4, "JPH_BroadPhaseCastResult.fraction has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_BroadPhaseCastResult.fraction has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_BroadPhaseCastResult) == 8, "JPH_BroadPhaseCastResult has size % instead of 8", size_of(JPH_BroadPhaseCastResult));
    }

    {
        info := type_info(JPH_RayCastResult);
        for info.members {
            if it.name == {
                case "bodyID";
                    assert(it.offset_in_bytes == 0, "JPH_RayCastResult.bodyID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_RayCastResult.bodyID has unexpected size % instead of 4", it.type.runtime_size);
                case "fraction";
                    assert(it.offset_in_bytes == 4, "JPH_RayCastResult.fraction has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_RayCastResult.fraction has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID2";
                    assert(it.offset_in_bytes == 8, "JPH_RayCastResult.subShapeID2 has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_RayCastResult.subShapeID2 has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_RayCastResult) == 12, "JPH_RayCastResult has size % instead of 12", size_of(JPH_RayCastResult));
    }

    {
        info := type_info(JPH_CollidePointResult);
        for info.members {
            if it.name == {
                case "bodyID";
                    assert(it.offset_in_bytes == 0, "JPH_CollidePointResult.bodyID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollidePointResult.bodyID has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID2";
                    assert(it.offset_in_bytes == 4, "JPH_CollidePointResult.subShapeID2 has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollidePointResult.subShapeID2 has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_CollidePointResult) == 8, "JPH_CollidePointResult has size % instead of 8", size_of(JPH_CollidePointResult));
    }

    {
        info := type_info(JPH_CollideShapeResult);
        for info.members {
            if it.name == {
                case "contactPointOn1";
                    assert(it.offset_in_bytes == 0, "JPH_CollideShapeResult.contactPointOn1 has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CollideShapeResult.contactPointOn1 has unexpected size % instead of 12", it.type.runtime_size);
                case "contactPointOn2";
                    assert(it.offset_in_bytes == 12, "JPH_CollideShapeResult.contactPointOn2 has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CollideShapeResult.contactPointOn2 has unexpected size % instead of 12", it.type.runtime_size);
                case "penetrationAxis";
                    assert(it.offset_in_bytes == 24, "JPH_CollideShapeResult.penetrationAxis has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CollideShapeResult.penetrationAxis has unexpected size % instead of 12", it.type.runtime_size);
                case "penetrationDepth";
                    assert(it.offset_in_bytes == 36, "JPH_CollideShapeResult.penetrationDepth has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollideShapeResult.penetrationDepth has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID1";
                    assert(it.offset_in_bytes == 40, "JPH_CollideShapeResult.subShapeID1 has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollideShapeResult.subShapeID1 has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID2";
                    assert(it.offset_in_bytes == 44, "JPH_CollideShapeResult.subShapeID2 has unexpected offset % instead of 44", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollideShapeResult.subShapeID2 has unexpected size % instead of 4", it.type.runtime_size);
                case "bodyID2";
                    assert(it.offset_in_bytes == 48, "JPH_CollideShapeResult.bodyID2 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollideShapeResult.bodyID2 has unexpected size % instead of 4", it.type.runtime_size);
                case "shape1FaceCount";
                    assert(it.offset_in_bytes == 52, "JPH_CollideShapeResult.shape1FaceCount has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollideShapeResult.shape1FaceCount has unexpected size % instead of 4", it.type.runtime_size);
                case "shape1Faces";
                    assert(it.offset_in_bytes == 56, "JPH_CollideShapeResult.shape1Faces has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CollideShapeResult.shape1Faces has unexpected size % instead of 8", it.type.runtime_size);
                case "shape2FaceCount";
                    assert(it.offset_in_bytes == 64, "JPH_CollideShapeResult.shape2FaceCount has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollideShapeResult.shape2FaceCount has unexpected size % instead of 4", it.type.runtime_size);
                case "shape2Faces";
                    assert(it.offset_in_bytes == 72, "JPH_CollideShapeResult.shape2Faces has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CollideShapeResult.shape2Faces has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_CollideShapeResult) == 80, "JPH_CollideShapeResult has size % instead of 80", size_of(JPH_CollideShapeResult));
    }

    {
        info := type_info(JPH_ShapeCastResult);
        for info.members {
            if it.name == {
                case "contactPointOn1";
                    assert(it.offset_in_bytes == 0, "JPH_ShapeCastResult.contactPointOn1 has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_ShapeCastResult.contactPointOn1 has unexpected size % instead of 12", it.type.runtime_size);
                case "contactPointOn2";
                    assert(it.offset_in_bytes == 12, "JPH_ShapeCastResult.contactPointOn2 has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_ShapeCastResult.contactPointOn2 has unexpected size % instead of 12", it.type.runtime_size);
                case "penetrationAxis";
                    assert(it.offset_in_bytes == 24, "JPH_ShapeCastResult.penetrationAxis has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_ShapeCastResult.penetrationAxis has unexpected size % instead of 12", it.type.runtime_size);
                case "penetrationDepth";
                    assert(it.offset_in_bytes == 36, "JPH_ShapeCastResult.penetrationDepth has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ShapeCastResult.penetrationDepth has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID1";
                    assert(it.offset_in_bytes == 40, "JPH_ShapeCastResult.subShapeID1 has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ShapeCastResult.subShapeID1 has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID2";
                    assert(it.offset_in_bytes == 44, "JPH_ShapeCastResult.subShapeID2 has unexpected offset % instead of 44", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ShapeCastResult.subShapeID2 has unexpected size % instead of 4", it.type.runtime_size);
                case "bodyID2";
                    assert(it.offset_in_bytes == 48, "JPH_ShapeCastResult.bodyID2 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ShapeCastResult.bodyID2 has unexpected size % instead of 4", it.type.runtime_size);
                case "fraction";
                    assert(it.offset_in_bytes == 52, "JPH_ShapeCastResult.fraction has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ShapeCastResult.fraction has unexpected size % instead of 4", it.type.runtime_size);
                case "isBackFaceHit";
                    assert(it.offset_in_bytes == 56, "JPH_ShapeCastResult.isBackFaceHit has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_ShapeCastResult.isBackFaceHit has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_ShapeCastResult) == 60, "JPH_ShapeCastResult has size % instead of 60", size_of(JPH_ShapeCastResult));
    }

    {
        info := type_info(JPH_DrawSettings);
        for info.members {
            if it.name == {
                case "drawGetSupportFunction";
                    assert(it.offset_in_bytes == 0, "JPH_DrawSettings.drawGetSupportFunction has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawGetSupportFunction has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSupportDirection";
                    assert(it.offset_in_bytes == 1, "JPH_DrawSettings.drawSupportDirection has unexpected offset % instead of 1", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawSupportDirection has unexpected size % instead of 1", it.type.runtime_size);
                case "drawGetSupportingFace";
                    assert(it.offset_in_bytes == 2, "JPH_DrawSettings.drawGetSupportingFace has unexpected offset % instead of 2", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawGetSupportingFace has unexpected size % instead of 1", it.type.runtime_size);
                case "drawShape";
                    assert(it.offset_in_bytes == 3, "JPH_DrawSettings.drawShape has unexpected offset % instead of 3", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawShape has unexpected size % instead of 1", it.type.runtime_size);
                case "drawShapeWireframe";
                    assert(it.offset_in_bytes == 4, "JPH_DrawSettings.drawShapeWireframe has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawShapeWireframe has unexpected size % instead of 1", it.type.runtime_size);
                case "drawShapeColor";
                    assert(it.offset_in_bytes == 8, "JPH_DrawSettings.drawShapeColor has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_DrawSettings.drawShapeColor has unexpected size % instead of 4", it.type.runtime_size);
                case "drawBoundingBox";
                    assert(it.offset_in_bytes == 12, "JPH_DrawSettings.drawBoundingBox has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawBoundingBox has unexpected size % instead of 1", it.type.runtime_size);
                case "drawCenterOfMassTransform";
                    assert(it.offset_in_bytes == 13, "JPH_DrawSettings.drawCenterOfMassTransform has unexpected offset % instead of 13", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawCenterOfMassTransform has unexpected size % instead of 1", it.type.runtime_size);
                case "drawWorldTransform";
                    assert(it.offset_in_bytes == 14, "JPH_DrawSettings.drawWorldTransform has unexpected offset % instead of 14", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawWorldTransform has unexpected size % instead of 1", it.type.runtime_size);
                case "drawVelocity";
                    assert(it.offset_in_bytes == 15, "JPH_DrawSettings.drawVelocity has unexpected offset % instead of 15", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawVelocity has unexpected size % instead of 1", it.type.runtime_size);
                case "drawMassAndInertia";
                    assert(it.offset_in_bytes == 16, "JPH_DrawSettings.drawMassAndInertia has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawMassAndInertia has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSleepStats";
                    assert(it.offset_in_bytes == 17, "JPH_DrawSettings.drawSleepStats has unexpected offset % instead of 17", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawSleepStats has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyVertices";
                    assert(it.offset_in_bytes == 18, "JPH_DrawSettings.drawSoftBodyVertices has unexpected offset % instead of 18", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawSoftBodyVertices has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyVertexVelocities";
                    assert(it.offset_in_bytes == 19, "JPH_DrawSettings.drawSoftBodyVertexVelocities has unexpected offset % instead of 19", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawSoftBodyVertexVelocities has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyEdgeConstraints";
                    assert(it.offset_in_bytes == 20, "JPH_DrawSettings.drawSoftBodyEdgeConstraints has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawSoftBodyEdgeConstraints has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyBendConstraints";
                    assert(it.offset_in_bytes == 21, "JPH_DrawSettings.drawSoftBodyBendConstraints has unexpected offset % instead of 21", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawSoftBodyBendConstraints has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyVolumeConstraints";
                    assert(it.offset_in_bytes == 22, "JPH_DrawSettings.drawSoftBodyVolumeConstraints has unexpected offset % instead of 22", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawSoftBodyVolumeConstraints has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodySkinConstraints";
                    assert(it.offset_in_bytes == 23, "JPH_DrawSettings.drawSoftBodySkinConstraints has unexpected offset % instead of 23", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawSoftBodySkinConstraints has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyLRAConstraints";
                    assert(it.offset_in_bytes == 24, "JPH_DrawSettings.drawSoftBodyLRAConstraints has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawSoftBodyLRAConstraints has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyPredictedBounds";
                    assert(it.offset_in_bytes == 25, "JPH_DrawSettings.drawSoftBodyPredictedBounds has unexpected offset % instead of 25", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_DrawSettings.drawSoftBodyPredictedBounds has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyConstraintColor";
                    assert(it.offset_in_bytes == 28, "JPH_DrawSettings.drawSoftBodyConstraintColor has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_DrawSettings.drawSoftBodyConstraintColor has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_DrawSettings) == 32, "JPH_DrawSettings has size % instead of 32", size_of(JPH_DrawSettings));
    }

    {
        info := type_info(JPH_SupportingFace);
        for info.members {
            if it.name == {
                case "count";
                    assert(it.offset_in_bytes == 0, "JPH_SupportingFace.count has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SupportingFace.count has unexpected size % instead of 4", it.type.runtime_size);
                case "vertices";
                    assert(it.offset_in_bytes == 4, "JPH_SupportingFace.vertices has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 384, "JPH_SupportingFace.vertices has unexpected size % instead of 384", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_SupportingFace) == 388, "JPH_SupportingFace has size % instead of 388", size_of(JPH_SupportingFace));
    }

    {
        info := type_info(JPH_CollisionGroup);
        for info.members {
            if it.name == {
                case "groupFilter";
                    assert(it.offset_in_bytes == 0, "JPH_CollisionGroup.groupFilter has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CollisionGroup.groupFilter has unexpected size % instead of 8", it.type.runtime_size);
                case "groupID";
                    assert(it.offset_in_bytes == 8, "JPH_CollisionGroup.groupID has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollisionGroup.groupID has unexpected size % instead of 4", it.type.runtime_size);
                case "subGroupID";
                    assert(it.offset_in_bytes == 12, "JPH_CollisionGroup.subGroupID has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollisionGroup.subGroupID has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_CollisionGroup) == 16, "JPH_CollisionGroup has size % instead of 16", size_of(JPH_CollisionGroup));
    }

    {
        info := type_info(JPH_CollisionEstimationResultImpulse);
        for info.members {
            if it.name == {
                case "contactImpulse";
                    assert(it.offset_in_bytes == 0, "JPH_CollisionEstimationResultImpulse.contactImpulse has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollisionEstimationResultImpulse.contactImpulse has unexpected size % instead of 4", it.type.runtime_size);
                case "frictionImpulse1";
                    assert(it.offset_in_bytes == 4, "JPH_CollisionEstimationResultImpulse.frictionImpulse1 has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollisionEstimationResultImpulse.frictionImpulse1 has unexpected size % instead of 4", it.type.runtime_size);
                case "frictionImpulse2";
                    assert(it.offset_in_bytes == 8, "JPH_CollisionEstimationResultImpulse.frictionImpulse2 has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollisionEstimationResultImpulse.frictionImpulse2 has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_CollisionEstimationResultImpulse) == 12, "JPH_CollisionEstimationResultImpulse has size % instead of 12", size_of(JPH_CollisionEstimationResultImpulse));
    }

    {
        info := type_info(JPH_CollisionEstimationResult);
        for info.members {
            if it.name == {
                case "linearVelocity1";
                    assert(it.offset_in_bytes == 0, "JPH_CollisionEstimationResult.linearVelocity1 has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CollisionEstimationResult.linearVelocity1 has unexpected size % instead of 12", it.type.runtime_size);
                case "angularVelocity1";
                    assert(it.offset_in_bytes == 12, "JPH_CollisionEstimationResult.angularVelocity1 has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CollisionEstimationResult.angularVelocity1 has unexpected size % instead of 12", it.type.runtime_size);
                case "linearVelocity2";
                    assert(it.offset_in_bytes == 24, "JPH_CollisionEstimationResult.linearVelocity2 has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CollisionEstimationResult.linearVelocity2 has unexpected size % instead of 12", it.type.runtime_size);
                case "angularVelocity2";
                    assert(it.offset_in_bytes == 36, "JPH_CollisionEstimationResult.angularVelocity2 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CollisionEstimationResult.angularVelocity2 has unexpected size % instead of 12", it.type.runtime_size);
                case "tangent1";
                    assert(it.offset_in_bytes == 48, "JPH_CollisionEstimationResult.tangent1 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CollisionEstimationResult.tangent1 has unexpected size % instead of 12", it.type.runtime_size);
                case "tangent2";
                    assert(it.offset_in_bytes == 60, "JPH_CollisionEstimationResult.tangent2 has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CollisionEstimationResult.tangent2 has unexpected size % instead of 12", it.type.runtime_size);
                case "impulseCount";
                    assert(it.offset_in_bytes == 72, "JPH_CollisionEstimationResult.impulseCount has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CollisionEstimationResult.impulseCount has unexpected size % instead of 4", it.type.runtime_size);
                case "impulses";
                    assert(it.offset_in_bytes == 80, "JPH_CollisionEstimationResult.impulses has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CollisionEstimationResult.impulses has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_CollisionEstimationResult) == 88, "JPH_CollisionEstimationResult has size % instead of 88", size_of(JPH_CollisionEstimationResult));
    }

    {
        info := type_info(JPH_ConstraintSettings);
        for info.members {
            if it.name == {
                case "enabled";
                    assert(it.offset_in_bytes == 0, "JPH_ConstraintSettings.enabled has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_ConstraintSettings.enabled has unexpected size % instead of 1", it.type.runtime_size);
                case "constraintPriority";
                    assert(it.offset_in_bytes == 4, "JPH_ConstraintSettings.constraintPriority has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ConstraintSettings.constraintPriority has unexpected size % instead of 4", it.type.runtime_size);
                case "numVelocityStepsOverride";
                    assert(it.offset_in_bytes == 8, "JPH_ConstraintSettings.numVelocityStepsOverride has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ConstraintSettings.numVelocityStepsOverride has unexpected size % instead of 4", it.type.runtime_size);
                case "numPositionStepsOverride";
                    assert(it.offset_in_bytes == 12, "JPH_ConstraintSettings.numPositionStepsOverride has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ConstraintSettings.numPositionStepsOverride has unexpected size % instead of 4", it.type.runtime_size);
                case "drawConstraintSize";
                    assert(it.offset_in_bytes == 16, "JPH_ConstraintSettings.drawConstraintSize has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ConstraintSettings.drawConstraintSize has unexpected size % instead of 4", it.type.runtime_size);
                case "userData";
                    assert(it.offset_in_bytes == 24, "JPH_ConstraintSettings.userData has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_ConstraintSettings.userData has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_ConstraintSettings) == 32, "JPH_ConstraintSettings has size % instead of 32", size_of(JPH_ConstraintSettings));
    }

    {
        info := type_info(JPH_FixedConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "JPH_FixedConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "JPH_FixedConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "JPH_FixedConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_FixedConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "autoDetectPoint";
                    assert(it.offset_in_bytes == 36, "JPH_FixedConstraintSettings.autoDetectPoint has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_FixedConstraintSettings.autoDetectPoint has unexpected size % instead of 1", it.type.runtime_size);
                case "point1";
                    assert(it.offset_in_bytes == 40, "JPH_FixedConstraintSettings.point1 has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_FixedConstraintSettings.point1 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisX1";
                    assert(it.offset_in_bytes == 52, "JPH_FixedConstraintSettings.axisX1 has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_FixedConstraintSettings.axisX1 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisY1";
                    assert(it.offset_in_bytes == 64, "JPH_FixedConstraintSettings.axisY1 has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_FixedConstraintSettings.axisY1 has unexpected size % instead of 12", it.type.runtime_size);
                case "point2";
                    assert(it.offset_in_bytes == 76, "JPH_FixedConstraintSettings.point2 has unexpected offset % instead of 76", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_FixedConstraintSettings.point2 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisX2";
                    assert(it.offset_in_bytes == 88, "JPH_FixedConstraintSettings.axisX2 has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_FixedConstraintSettings.axisX2 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisY2";
                    assert(it.offset_in_bytes == 100, "JPH_FixedConstraintSettings.axisY2 has unexpected offset % instead of 100", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_FixedConstraintSettings.axisY2 has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_FixedConstraintSettings) == 112, "JPH_FixedConstraintSettings has size % instead of 112", size_of(JPH_FixedConstraintSettings));
    }

    {
        info := type_info(JPH_DistanceConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "JPH_DistanceConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "JPH_DistanceConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "JPH_DistanceConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_DistanceConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "point1";
                    assert(it.offset_in_bytes == 36, "JPH_DistanceConstraintSettings.point1 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_DistanceConstraintSettings.point1 has unexpected size % instead of 12", it.type.runtime_size);
                case "point2";
                    assert(it.offset_in_bytes == 48, "JPH_DistanceConstraintSettings.point2 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_DistanceConstraintSettings.point2 has unexpected size % instead of 12", it.type.runtime_size);
                case "minDistance";
                    assert(it.offset_in_bytes == 60, "JPH_DistanceConstraintSettings.minDistance has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_DistanceConstraintSettings.minDistance has unexpected size % instead of 4", it.type.runtime_size);
                case "maxDistance";
                    assert(it.offset_in_bytes == 64, "JPH_DistanceConstraintSettings.maxDistance has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_DistanceConstraintSettings.maxDistance has unexpected size % instead of 4", it.type.runtime_size);
                case "limitsSpringSettings";
                    assert(it.offset_in_bytes == 68, "JPH_DistanceConstraintSettings.limitsSpringSettings has unexpected offset % instead of 68", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_DistanceConstraintSettings.limitsSpringSettings has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_DistanceConstraintSettings) == 80, "JPH_DistanceConstraintSettings has size % instead of 80", size_of(JPH_DistanceConstraintSettings));
    }

    {
        info := type_info(JPH_PointConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "JPH_PointConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "JPH_PointConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "JPH_PointConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PointConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "point1";
                    assert(it.offset_in_bytes == 36, "JPH_PointConstraintSettings.point1 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_PointConstraintSettings.point1 has unexpected size % instead of 12", it.type.runtime_size);
                case "point2";
                    assert(it.offset_in_bytes == 48, "JPH_PointConstraintSettings.point2 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_PointConstraintSettings.point2 has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_PointConstraintSettings) == 64, "JPH_PointConstraintSettings has size % instead of 64", size_of(JPH_PointConstraintSettings));
    }

    {
        info := type_info(JPH_HingeConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "JPH_HingeConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "JPH_HingeConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "JPH_HingeConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_HingeConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "point1";
                    assert(it.offset_in_bytes == 36, "JPH_HingeConstraintSettings.point1 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_HingeConstraintSettings.point1 has unexpected size % instead of 12", it.type.runtime_size);
                case "hingeAxis1";
                    assert(it.offset_in_bytes == 48, "JPH_HingeConstraintSettings.hingeAxis1 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_HingeConstraintSettings.hingeAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "normalAxis1";
                    assert(it.offset_in_bytes == 60, "JPH_HingeConstraintSettings.normalAxis1 has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_HingeConstraintSettings.normalAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "point2";
                    assert(it.offset_in_bytes == 72, "JPH_HingeConstraintSettings.point2 has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_HingeConstraintSettings.point2 has unexpected size % instead of 12", it.type.runtime_size);
                case "hingeAxis2";
                    assert(it.offset_in_bytes == 84, "JPH_HingeConstraintSettings.hingeAxis2 has unexpected offset % instead of 84", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_HingeConstraintSettings.hingeAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "normalAxis2";
                    assert(it.offset_in_bytes == 96, "JPH_HingeConstraintSettings.normalAxis2 has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_HingeConstraintSettings.normalAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "limitsMin";
                    assert(it.offset_in_bytes == 108, "JPH_HingeConstraintSettings.limitsMin has unexpected offset % instead of 108", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_HingeConstraintSettings.limitsMin has unexpected size % instead of 4", it.type.runtime_size);
                case "limitsMax";
                    assert(it.offset_in_bytes == 112, "JPH_HingeConstraintSettings.limitsMax has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_HingeConstraintSettings.limitsMax has unexpected size % instead of 4", it.type.runtime_size);
                case "limitsSpringSettings";
                    assert(it.offset_in_bytes == 116, "JPH_HingeConstraintSettings.limitsSpringSettings has unexpected offset % instead of 116", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_HingeConstraintSettings.limitsSpringSettings has unexpected size % instead of 12", it.type.runtime_size);
                case "maxFrictionTorque";
                    assert(it.offset_in_bytes == 128, "JPH_HingeConstraintSettings.maxFrictionTorque has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_HingeConstraintSettings.maxFrictionTorque has unexpected size % instead of 4", it.type.runtime_size);
                case "motorSettings";
                    assert(it.offset_in_bytes == 132, "JPH_HingeConstraintSettings.motorSettings has unexpected offset % instead of 132", it.offset_in_bytes);
                    assert(it.type.runtime_size == 28, "JPH_HingeConstraintSettings.motorSettings has unexpected size % instead of 28", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_HingeConstraintSettings) == 160, "JPH_HingeConstraintSettings has size % instead of 160", size_of(JPH_HingeConstraintSettings));
    }

    {
        info := type_info(JPH_SliderConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "JPH_SliderConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "JPH_SliderConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "JPH_SliderConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SliderConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "autoDetectPoint";
                    assert(it.offset_in_bytes == 36, "JPH_SliderConstraintSettings.autoDetectPoint has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_SliderConstraintSettings.autoDetectPoint has unexpected size % instead of 1", it.type.runtime_size);
                case "point1";
                    assert(it.offset_in_bytes == 40, "JPH_SliderConstraintSettings.point1 has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SliderConstraintSettings.point1 has unexpected size % instead of 12", it.type.runtime_size);
                case "sliderAxis1";
                    assert(it.offset_in_bytes == 52, "JPH_SliderConstraintSettings.sliderAxis1 has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SliderConstraintSettings.sliderAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "normalAxis1";
                    assert(it.offset_in_bytes == 64, "JPH_SliderConstraintSettings.normalAxis1 has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SliderConstraintSettings.normalAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "point2";
                    assert(it.offset_in_bytes == 76, "JPH_SliderConstraintSettings.point2 has unexpected offset % instead of 76", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SliderConstraintSettings.point2 has unexpected size % instead of 12", it.type.runtime_size);
                case "sliderAxis2";
                    assert(it.offset_in_bytes == 88, "JPH_SliderConstraintSettings.sliderAxis2 has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SliderConstraintSettings.sliderAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "normalAxis2";
                    assert(it.offset_in_bytes == 100, "JPH_SliderConstraintSettings.normalAxis2 has unexpected offset % instead of 100", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SliderConstraintSettings.normalAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "limitsMin";
                    assert(it.offset_in_bytes == 112, "JPH_SliderConstraintSettings.limitsMin has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SliderConstraintSettings.limitsMin has unexpected size % instead of 4", it.type.runtime_size);
                case "limitsMax";
                    assert(it.offset_in_bytes == 116, "JPH_SliderConstraintSettings.limitsMax has unexpected offset % instead of 116", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SliderConstraintSettings.limitsMax has unexpected size % instead of 4", it.type.runtime_size);
                case "limitsSpringSettings";
                    assert(it.offset_in_bytes == 120, "JPH_SliderConstraintSettings.limitsSpringSettings has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SliderConstraintSettings.limitsSpringSettings has unexpected size % instead of 12", it.type.runtime_size);
                case "maxFrictionForce";
                    assert(it.offset_in_bytes == 132, "JPH_SliderConstraintSettings.maxFrictionForce has unexpected offset % instead of 132", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SliderConstraintSettings.maxFrictionForce has unexpected size % instead of 4", it.type.runtime_size);
                case "motorSettings";
                    assert(it.offset_in_bytes == 136, "JPH_SliderConstraintSettings.motorSettings has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 28, "JPH_SliderConstraintSettings.motorSettings has unexpected size % instead of 28", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_SliderConstraintSettings) == 168, "JPH_SliderConstraintSettings has size % instead of 168", size_of(JPH_SliderConstraintSettings));
    }

    {
        info := type_info(JPH_ConeConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "JPH_ConeConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "JPH_ConeConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "JPH_ConeConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ConeConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "point1";
                    assert(it.offset_in_bytes == 36, "JPH_ConeConstraintSettings.point1 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_ConeConstraintSettings.point1 has unexpected size % instead of 12", it.type.runtime_size);
                case "twistAxis1";
                    assert(it.offset_in_bytes == 48, "JPH_ConeConstraintSettings.twistAxis1 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_ConeConstraintSettings.twistAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "point2";
                    assert(it.offset_in_bytes == 60, "JPH_ConeConstraintSettings.point2 has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_ConeConstraintSettings.point2 has unexpected size % instead of 12", it.type.runtime_size);
                case "twistAxis2";
                    assert(it.offset_in_bytes == 72, "JPH_ConeConstraintSettings.twistAxis2 has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_ConeConstraintSettings.twistAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "halfConeAngle";
                    assert(it.offset_in_bytes == 84, "JPH_ConeConstraintSettings.halfConeAngle has unexpected offset % instead of 84", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ConeConstraintSettings.halfConeAngle has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_ConeConstraintSettings) == 88, "JPH_ConeConstraintSettings has size % instead of 88", size_of(JPH_ConeConstraintSettings));
    }

    {
        info := type_info(JPH_SwingTwistConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "JPH_SwingTwistConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "JPH_SwingTwistConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "JPH_SwingTwistConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SwingTwistConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "position1";
                    assert(it.offset_in_bytes == 36, "JPH_SwingTwistConstraintSettings.position1 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SwingTwistConstraintSettings.position1 has unexpected size % instead of 12", it.type.runtime_size);
                case "twistAxis1";
                    assert(it.offset_in_bytes == 48, "JPH_SwingTwistConstraintSettings.twistAxis1 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SwingTwistConstraintSettings.twistAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "planeAxis1";
                    assert(it.offset_in_bytes == 60, "JPH_SwingTwistConstraintSettings.planeAxis1 has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SwingTwistConstraintSettings.planeAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "position2";
                    assert(it.offset_in_bytes == 72, "JPH_SwingTwistConstraintSettings.position2 has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SwingTwistConstraintSettings.position2 has unexpected size % instead of 12", it.type.runtime_size);
                case "twistAxis2";
                    assert(it.offset_in_bytes == 84, "JPH_SwingTwistConstraintSettings.twistAxis2 has unexpected offset % instead of 84", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SwingTwistConstraintSettings.twistAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "planeAxis2";
                    assert(it.offset_in_bytes == 96, "JPH_SwingTwistConstraintSettings.planeAxis2 has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SwingTwistConstraintSettings.planeAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "swingType";
                    assert(it.offset_in_bytes == 108, "JPH_SwingTwistConstraintSettings.swingType has unexpected offset % instead of 108", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SwingTwistConstraintSettings.swingType has unexpected size % instead of 4", it.type.runtime_size);
                case "normalHalfConeAngle";
                    assert(it.offset_in_bytes == 112, "JPH_SwingTwistConstraintSettings.normalHalfConeAngle has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SwingTwistConstraintSettings.normalHalfConeAngle has unexpected size % instead of 4", it.type.runtime_size);
                case "planeHalfConeAngle";
                    assert(it.offset_in_bytes == 116, "JPH_SwingTwistConstraintSettings.planeHalfConeAngle has unexpected offset % instead of 116", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SwingTwistConstraintSettings.planeHalfConeAngle has unexpected size % instead of 4", it.type.runtime_size);
                case "twistMinAngle";
                    assert(it.offset_in_bytes == 120, "JPH_SwingTwistConstraintSettings.twistMinAngle has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SwingTwistConstraintSettings.twistMinAngle has unexpected size % instead of 4", it.type.runtime_size);
                case "twistMaxAngle";
                    assert(it.offset_in_bytes == 124, "JPH_SwingTwistConstraintSettings.twistMaxAngle has unexpected offset % instead of 124", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SwingTwistConstraintSettings.twistMaxAngle has unexpected size % instead of 4", it.type.runtime_size);
                case "maxFrictionTorque";
                    assert(it.offset_in_bytes == 128, "JPH_SwingTwistConstraintSettings.maxFrictionTorque has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SwingTwistConstraintSettings.maxFrictionTorque has unexpected size % instead of 4", it.type.runtime_size);
                case "swingMotorSettings";
                    assert(it.offset_in_bytes == 132, "JPH_SwingTwistConstraintSettings.swingMotorSettings has unexpected offset % instead of 132", it.offset_in_bytes);
                    assert(it.type.runtime_size == 28, "JPH_SwingTwistConstraintSettings.swingMotorSettings has unexpected size % instead of 28", it.type.runtime_size);
                case "twistMotorSettings";
                    assert(it.offset_in_bytes == 160, "JPH_SwingTwistConstraintSettings.twistMotorSettings has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 28, "JPH_SwingTwistConstraintSettings.twistMotorSettings has unexpected size % instead of 28", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_SwingTwistConstraintSettings) == 192, "JPH_SwingTwistConstraintSettings has size % instead of 192", size_of(JPH_SwingTwistConstraintSettings));
    }

    {
        info := type_info(JPH_SixDOFConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "JPH_SixDOFConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "JPH_SixDOFConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "JPH_SixDOFConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SixDOFConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "position1";
                    assert(it.offset_in_bytes == 36, "JPH_SixDOFConstraintSettings.position1 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SixDOFConstraintSettings.position1 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisX1";
                    assert(it.offset_in_bytes == 48, "JPH_SixDOFConstraintSettings.axisX1 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SixDOFConstraintSettings.axisX1 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisY1";
                    assert(it.offset_in_bytes == 60, "JPH_SixDOFConstraintSettings.axisY1 has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SixDOFConstraintSettings.axisY1 has unexpected size % instead of 12", it.type.runtime_size);
                case "position2";
                    assert(it.offset_in_bytes == 72, "JPH_SixDOFConstraintSettings.position2 has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SixDOFConstraintSettings.position2 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisX2";
                    assert(it.offset_in_bytes == 84, "JPH_SixDOFConstraintSettings.axisX2 has unexpected offset % instead of 84", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SixDOFConstraintSettings.axisX2 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisY2";
                    assert(it.offset_in_bytes == 96, "JPH_SixDOFConstraintSettings.axisY2 has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_SixDOFConstraintSettings.axisY2 has unexpected size % instead of 12", it.type.runtime_size);
                case "maxFriction";
                    assert(it.offset_in_bytes == 108, "JPH_SixDOFConstraintSettings.maxFriction has unexpected offset % instead of 108", it.offset_in_bytes);
                    assert(it.type.runtime_size == 24, "JPH_SixDOFConstraintSettings.maxFriction has unexpected size % instead of 24", it.type.runtime_size);
                case "swingType";
                    assert(it.offset_in_bytes == 132, "JPH_SixDOFConstraintSettings.swingType has unexpected offset % instead of 132", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SixDOFConstraintSettings.swingType has unexpected size % instead of 4", it.type.runtime_size);
                case "limitMin";
                    assert(it.offset_in_bytes == 136, "JPH_SixDOFConstraintSettings.limitMin has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 24, "JPH_SixDOFConstraintSettings.limitMin has unexpected size % instead of 24", it.type.runtime_size);
                case "limitMax";
                    assert(it.offset_in_bytes == 160, "JPH_SixDOFConstraintSettings.limitMax has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 24, "JPH_SixDOFConstraintSettings.limitMax has unexpected size % instead of 24", it.type.runtime_size);
                case "limitsSpringSettings";
                    assert(it.offset_in_bytes == 184, "JPH_SixDOFConstraintSettings.limitsSpringSettings has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 36, "JPH_SixDOFConstraintSettings.limitsSpringSettings has unexpected size % instead of 36", it.type.runtime_size);
                case "motorSettings";
                    assert(it.offset_in_bytes == 220, "JPH_SixDOFConstraintSettings.motorSettings has unexpected offset % instead of 220", it.offset_in_bytes);
                    assert(it.type.runtime_size == 168, "JPH_SixDOFConstraintSettings.motorSettings has unexpected size % instead of 168", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_SixDOFConstraintSettings) == 392, "JPH_SixDOFConstraintSettings has size % instead of 392", size_of(JPH_SixDOFConstraintSettings));
    }

    {
        info := type_info(JPH_GearConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "JPH_GearConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "JPH_GearConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "JPH_GearConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_GearConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "hingeAxis1";
                    assert(it.offset_in_bytes == 36, "JPH_GearConstraintSettings.hingeAxis1 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_GearConstraintSettings.hingeAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "hingeAxis2";
                    assert(it.offset_in_bytes == 48, "JPH_GearConstraintSettings.hingeAxis2 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_GearConstraintSettings.hingeAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "ratio";
                    assert(it.offset_in_bytes == 60, "JPH_GearConstraintSettings.ratio has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_GearConstraintSettings.ratio has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_GearConstraintSettings) == 64, "JPH_GearConstraintSettings has size % instead of 64", size_of(JPH_GearConstraintSettings));
    }

    {
        info := type_info(JPH_BodyLockRead);
        for info.members {
            if it.name == {
                case "lockInterface";
                    assert(it.offset_in_bytes == 0, "JPH_BodyLockRead.lockInterface has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_BodyLockRead.lockInterface has unexpected size % instead of 8", it.type.runtime_size);
                case "mutex";
                    assert(it.offset_in_bytes == 8, "JPH_BodyLockRead.mutex has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_BodyLockRead.mutex has unexpected size % instead of 8", it.type.runtime_size);
                case "body";
                    assert(it.offset_in_bytes == 16, "JPH_BodyLockRead.body has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_BodyLockRead.body has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_BodyLockRead) == 24, "JPH_BodyLockRead has size % instead of 24", size_of(JPH_BodyLockRead));
    }

    {
        info := type_info(JPH_BodyLockWrite);
        for info.members {
            if it.name == {
                case "lockInterface";
                    assert(it.offset_in_bytes == 0, "JPH_BodyLockWrite.lockInterface has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_BodyLockWrite.lockInterface has unexpected size % instead of 8", it.type.runtime_size);
                case "mutex";
                    assert(it.offset_in_bytes == 8, "JPH_BodyLockWrite.mutex has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_BodyLockWrite.mutex has unexpected size % instead of 8", it.type.runtime_size);
                case "body";
                    assert(it.offset_in_bytes == 16, "JPH_BodyLockWrite.body has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_BodyLockWrite.body has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_BodyLockWrite) == 24, "JPH_BodyLockWrite has size % instead of 24", size_of(JPH_BodyLockWrite));
    }

    {
        info := type_info(JPH_ExtendedUpdateSettings);
        for info.members {
            if it.name == {
                case "stickToFloorStepDown";
                    assert(it.offset_in_bytes == 0, "JPH_ExtendedUpdateSettings.stickToFloorStepDown has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_ExtendedUpdateSettings.stickToFloorStepDown has unexpected size % instead of 12", it.type.runtime_size);
                case "walkStairsStepUp";
                    assert(it.offset_in_bytes == 12, "JPH_ExtendedUpdateSettings.walkStairsStepUp has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_ExtendedUpdateSettings.walkStairsStepUp has unexpected size % instead of 12", it.type.runtime_size);
                case "walkStairsMinStepForward";
                    assert(it.offset_in_bytes == 24, "JPH_ExtendedUpdateSettings.walkStairsMinStepForward has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ExtendedUpdateSettings.walkStairsMinStepForward has unexpected size % instead of 4", it.type.runtime_size);
                case "walkStairsStepForwardTest";
                    assert(it.offset_in_bytes == 28, "JPH_ExtendedUpdateSettings.walkStairsStepForwardTest has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ExtendedUpdateSettings.walkStairsStepForwardTest has unexpected size % instead of 4", it.type.runtime_size);
                case "walkStairsCosAngleForwardContact";
                    assert(it.offset_in_bytes == 32, "JPH_ExtendedUpdateSettings.walkStairsCosAngleForwardContact has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_ExtendedUpdateSettings.walkStairsCosAngleForwardContact has unexpected size % instead of 4", it.type.runtime_size);
                case "walkStairsStepDownExtra";
                    assert(it.offset_in_bytes == 36, "JPH_ExtendedUpdateSettings.walkStairsStepDownExtra has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_ExtendedUpdateSettings.walkStairsStepDownExtra has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_ExtendedUpdateSettings) == 48, "JPH_ExtendedUpdateSettings has size % instead of 48", size_of(JPH_ExtendedUpdateSettings));
    }

    {
        info := type_info(JPH_CharacterBaseSettings);
        for info.members {
            if it.name == {
                case "up";
                    assert(it.offset_in_bytes == 0, "JPH_CharacterBaseSettings.up has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CharacterBaseSettings.up has unexpected size % instead of 12", it.type.runtime_size);
                case "supportingVolume";
                    assert(it.offset_in_bytes == 12, "JPH_CharacterBaseSettings.supportingVolume has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "JPH_CharacterBaseSettings.supportingVolume has unexpected size % instead of 16", it.type.runtime_size);
                case "maxSlopeAngle";
                    assert(it.offset_in_bytes == 28, "JPH_CharacterBaseSettings.maxSlopeAngle has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterBaseSettings.maxSlopeAngle has unexpected size % instead of 4", it.type.runtime_size);
                case "enhancedInternalEdgeRemoval";
                    assert(it.offset_in_bytes == 32, "JPH_CharacterBaseSettings.enhancedInternalEdgeRemoval has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_CharacterBaseSettings.enhancedInternalEdgeRemoval has unexpected size % instead of 1", it.type.runtime_size);
                case "shape";
                    assert(it.offset_in_bytes == 40, "JPH_CharacterBaseSettings.shape has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterBaseSettings.shape has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_CharacterBaseSettings) == 48, "JPH_CharacterBaseSettings has size % instead of 48", size_of(JPH_CharacterBaseSettings));
    }

    {
        info := type_info(JPH_CharacterSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "JPH_CharacterSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "JPH_CharacterSettings.base has unexpected size % instead of 48", it.type.runtime_size);
                case "layer";
                    assert(it.offset_in_bytes == 48, "JPH_CharacterSettings.layer has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterSettings.layer has unexpected size % instead of 4", it.type.runtime_size);
                case "mass";
                    assert(it.offset_in_bytes == 52, "JPH_CharacterSettings.mass has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterSettings.mass has unexpected size % instead of 4", it.type.runtime_size);
                case "friction";
                    assert(it.offset_in_bytes == 56, "JPH_CharacterSettings.friction has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterSettings.friction has unexpected size % instead of 4", it.type.runtime_size);
                case "gravityFactor";
                    assert(it.offset_in_bytes == 60, "JPH_CharacterSettings.gravityFactor has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterSettings.gravityFactor has unexpected size % instead of 4", it.type.runtime_size);
                case "allowedDOFs";
                    assert(it.offset_in_bytes == 64, "JPH_CharacterSettings.allowedDOFs has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterSettings.allowedDOFs has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_CharacterSettings) == 72, "JPH_CharacterSettings has size % instead of 72", size_of(JPH_CharacterSettings));
    }

    {
        info := type_info(JPH_CharacterVirtualSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "JPH_CharacterVirtualSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "JPH_CharacterVirtualSettings.base has unexpected size % instead of 48", it.type.runtime_size);
                case "ID";
                    assert(it.offset_in_bytes == 48, "JPH_CharacterVirtualSettings.ID has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualSettings.ID has unexpected size % instead of 4", it.type.runtime_size);
                case "mass";
                    assert(it.offset_in_bytes == 52, "JPH_CharacterVirtualSettings.mass has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualSettings.mass has unexpected size % instead of 4", it.type.runtime_size);
                case "maxStrength";
                    assert(it.offset_in_bytes == 56, "JPH_CharacterVirtualSettings.maxStrength has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualSettings.maxStrength has unexpected size % instead of 4", it.type.runtime_size);
                case "shapeOffset";
                    assert(it.offset_in_bytes == 60, "JPH_CharacterVirtualSettings.shapeOffset has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CharacterVirtualSettings.shapeOffset has unexpected size % instead of 12", it.type.runtime_size);
                case "backFaceMode";
                    assert(it.offset_in_bytes == 72, "JPH_CharacterVirtualSettings.backFaceMode has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualSettings.backFaceMode has unexpected size % instead of 4", it.type.runtime_size);
                case "predictiveContactDistance";
                    assert(it.offset_in_bytes == 76, "JPH_CharacterVirtualSettings.predictiveContactDistance has unexpected offset % instead of 76", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualSettings.predictiveContactDistance has unexpected size % instead of 4", it.type.runtime_size);
                case "maxCollisionIterations";
                    assert(it.offset_in_bytes == 80, "JPH_CharacterVirtualSettings.maxCollisionIterations has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualSettings.maxCollisionIterations has unexpected size % instead of 4", it.type.runtime_size);
                case "maxConstraintIterations";
                    assert(it.offset_in_bytes == 84, "JPH_CharacterVirtualSettings.maxConstraintIterations has unexpected offset % instead of 84", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualSettings.maxConstraintIterations has unexpected size % instead of 4", it.type.runtime_size);
                case "minTimeRemaining";
                    assert(it.offset_in_bytes == 88, "JPH_CharacterVirtualSettings.minTimeRemaining has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualSettings.minTimeRemaining has unexpected size % instead of 4", it.type.runtime_size);
                case "collisionTolerance";
                    assert(it.offset_in_bytes == 92, "JPH_CharacterVirtualSettings.collisionTolerance has unexpected offset % instead of 92", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualSettings.collisionTolerance has unexpected size % instead of 4", it.type.runtime_size);
                case "characterPadding";
                    assert(it.offset_in_bytes == 96, "JPH_CharacterVirtualSettings.characterPadding has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualSettings.characterPadding has unexpected size % instead of 4", it.type.runtime_size);
                case "maxNumHits";
                    assert(it.offset_in_bytes == 100, "JPH_CharacterVirtualSettings.maxNumHits has unexpected offset % instead of 100", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualSettings.maxNumHits has unexpected size % instead of 4", it.type.runtime_size);
                case "hitReductionCosMaxAngle";
                    assert(it.offset_in_bytes == 104, "JPH_CharacterVirtualSettings.hitReductionCosMaxAngle has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualSettings.hitReductionCosMaxAngle has unexpected size % instead of 4", it.type.runtime_size);
                case "penetrationRecoverySpeed";
                    assert(it.offset_in_bytes == 108, "JPH_CharacterVirtualSettings.penetrationRecoverySpeed has unexpected offset % instead of 108", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualSettings.penetrationRecoverySpeed has unexpected size % instead of 4", it.type.runtime_size);
                case "innerBodyShape";
                    assert(it.offset_in_bytes == 112, "JPH_CharacterVirtualSettings.innerBodyShape has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterVirtualSettings.innerBodyShape has unexpected size % instead of 8", it.type.runtime_size);
                case "innerBodyIDOverride";
                    assert(it.offset_in_bytes == 120, "JPH_CharacterVirtualSettings.innerBodyIDOverride has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualSettings.innerBodyIDOverride has unexpected size % instead of 4", it.type.runtime_size);
                case "innerBodyLayer";
                    assert(it.offset_in_bytes == 124, "JPH_CharacterVirtualSettings.innerBodyLayer has unexpected offset % instead of 124", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualSettings.innerBodyLayer has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_CharacterVirtualSettings) == 128, "JPH_CharacterVirtualSettings has size % instead of 128", size_of(JPH_CharacterVirtualSettings));
    }

    {
        info := type_info(JPH_CharacterContactSettings);
        for info.members {
            if it.name == {
                case "canPushCharacter";
                    assert(it.offset_in_bytes == 0, "JPH_CharacterContactSettings.canPushCharacter has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_CharacterContactSettings.canPushCharacter has unexpected size % instead of 1", it.type.runtime_size);
                case "canReceiveImpulses";
                    assert(it.offset_in_bytes == 1, "JPH_CharacterContactSettings.canReceiveImpulses has unexpected offset % instead of 1", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_CharacterContactSettings.canReceiveImpulses has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_CharacterContactSettings) == 2, "JPH_CharacterContactSettings has size % instead of 2", size_of(JPH_CharacterContactSettings));
    }

    {
        info := type_info(JPH_CharacterVirtualContact);
        for info.members {
            if it.name == {
                case "hash";
                    assert(it.offset_in_bytes == 0, "JPH_CharacterVirtualContact.hash has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterVirtualContact.hash has unexpected size % instead of 8", it.type.runtime_size);
                case "bodyB";
                    assert(it.offset_in_bytes == 8, "JPH_CharacterVirtualContact.bodyB has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualContact.bodyB has unexpected size % instead of 4", it.type.runtime_size);
                case "characterIDB";
                    assert(it.offset_in_bytes == 12, "JPH_CharacterVirtualContact.characterIDB has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualContact.characterIDB has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeIDB";
                    assert(it.offset_in_bytes == 16, "JPH_CharacterVirtualContact.subShapeIDB has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualContact.subShapeIDB has unexpected size % instead of 4", it.type.runtime_size);
                case "position";
                    assert(it.offset_in_bytes == 20, "JPH_CharacterVirtualContact.position has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CharacterVirtualContact.position has unexpected size % instead of 12", it.type.runtime_size);
                case "linearVelocity";
                    assert(it.offset_in_bytes == 32, "JPH_CharacterVirtualContact.linearVelocity has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CharacterVirtualContact.linearVelocity has unexpected size % instead of 12", it.type.runtime_size);
                case "contactNormal";
                    assert(it.offset_in_bytes == 44, "JPH_CharacterVirtualContact.contactNormal has unexpected offset % instead of 44", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CharacterVirtualContact.contactNormal has unexpected size % instead of 12", it.type.runtime_size);
                case "surfaceNormal";
                    assert(it.offset_in_bytes == 56, "JPH_CharacterVirtualContact.surfaceNormal has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "JPH_CharacterVirtualContact.surfaceNormal has unexpected size % instead of 12", it.type.runtime_size);
                case "distance";
                    assert(it.offset_in_bytes == 68, "JPH_CharacterVirtualContact.distance has unexpected offset % instead of 68", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualContact.distance has unexpected size % instead of 4", it.type.runtime_size);
                case "fraction";
                    assert(it.offset_in_bytes == 72, "JPH_CharacterVirtualContact.fraction has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualContact.fraction has unexpected size % instead of 4", it.type.runtime_size);
                case "motionTypeB";
                    assert(it.offset_in_bytes == 76, "JPH_CharacterVirtualContact.motionTypeB has unexpected offset % instead of 76", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_CharacterVirtualContact.motionTypeB has unexpected size % instead of 4", it.type.runtime_size);
                case "isSensorB";
                    assert(it.offset_in_bytes == 80, "JPH_CharacterVirtualContact.isSensorB has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_CharacterVirtualContact.isSensorB has unexpected size % instead of 1", it.type.runtime_size);
                case "characterB";
                    assert(it.offset_in_bytes == 88, "JPH_CharacterVirtualContact.characterB has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterVirtualContact.characterB has unexpected size % instead of 8", it.type.runtime_size);
                case "userData";
                    assert(it.offset_in_bytes == 96, "JPH_CharacterVirtualContact.userData has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterVirtualContact.userData has unexpected size % instead of 8", it.type.runtime_size);
                case "material";
                    assert(it.offset_in_bytes == 104, "JPH_CharacterVirtualContact.material has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterVirtualContact.material has unexpected size % instead of 8", it.type.runtime_size);
                case "hadCollision";
                    assert(it.offset_in_bytes == 112, "JPH_CharacterVirtualContact.hadCollision has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_CharacterVirtualContact.hadCollision has unexpected size % instead of 1", it.type.runtime_size);
                case "wasDiscarded";
                    assert(it.offset_in_bytes == 113, "JPH_CharacterVirtualContact.wasDiscarded has unexpected offset % instead of 113", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_CharacterVirtualContact.wasDiscarded has unexpected size % instead of 1", it.type.runtime_size);
                case "canPushCharacter";
                    assert(it.offset_in_bytes == 114, "JPH_CharacterVirtualContact.canPushCharacter has unexpected offset % instead of 114", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_CharacterVirtualContact.canPushCharacter has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_CharacterVirtualContact) == 120, "JPH_CharacterVirtualContact has size % instead of 120", size_of(JPH_CharacterVirtualContact));
    }

    {
        info := type_info(JobSystemThreadPoolConfig);
        for info.members {
            if it.name == {
                case "maxJobs";
                    assert(it.offset_in_bytes == 0, "JobSystemThreadPoolConfig.maxJobs has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JobSystemThreadPoolConfig.maxJobs has unexpected size % instead of 4", it.type.runtime_size);
                case "maxBarriers";
                    assert(it.offset_in_bytes == 4, "JobSystemThreadPoolConfig.maxBarriers has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JobSystemThreadPoolConfig.maxBarriers has unexpected size % instead of 4", it.type.runtime_size);
                case "numThreads";
                    assert(it.offset_in_bytes == 8, "JobSystemThreadPoolConfig.numThreads has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JobSystemThreadPoolConfig.numThreads has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JobSystemThreadPoolConfig) == 12, "JobSystemThreadPoolConfig has size % instead of 12", size_of(JobSystemThreadPoolConfig));
    }

    {
        info := type_info(JPH_JobSystemConfig);
        for info.members {
            if it.name == {
                case "_context";
                    assert(it.offset_in_bytes == 0, "JPH_JobSystemConfig._context has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_JobSystemConfig._context has unexpected size % instead of 8", it.type.runtime_size);
                case "queueJob";
                    assert(it.offset_in_bytes == 8, "JPH_JobSystemConfig.queueJob has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_JobSystemConfig.queueJob has unexpected size % instead of 8", it.type.runtime_size);
                case "queueJobs";
                    assert(it.offset_in_bytes == 16, "JPH_JobSystemConfig.queueJobs has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_JobSystemConfig.queueJobs has unexpected size % instead of 8", it.type.runtime_size);
                case "maxConcurrency";
                    assert(it.offset_in_bytes == 24, "JPH_JobSystemConfig.maxConcurrency has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_JobSystemConfig.maxConcurrency has unexpected size % instead of 4", it.type.runtime_size);
                case "maxBarriers";
                    assert(it.offset_in_bytes == 28, "JPH_JobSystemConfig.maxBarriers has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_JobSystemConfig.maxBarriers has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_JobSystemConfig) == 32, "JPH_JobSystemConfig has size % instead of 32", size_of(JPH_JobSystemConfig));
    }

    {
        info := type_info(JPH_PhysicsSystemSettings);
        for info.members {
            if it.name == {
                case "maxBodies";
                    assert(it.offset_in_bytes == 0, "JPH_PhysicsSystemSettings.maxBodies has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSystemSettings.maxBodies has unexpected size % instead of 4", it.type.runtime_size);
                case "numBodyMutexes";
                    assert(it.offset_in_bytes == 4, "JPH_PhysicsSystemSettings.numBodyMutexes has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSystemSettings.numBodyMutexes has unexpected size % instead of 4", it.type.runtime_size);
                case "maxBodyPairs";
                    assert(it.offset_in_bytes == 8, "JPH_PhysicsSystemSettings.maxBodyPairs has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSystemSettings.maxBodyPairs has unexpected size % instead of 4", it.type.runtime_size);
                case "maxContactConstraints";
                    assert(it.offset_in_bytes == 12, "JPH_PhysicsSystemSettings.maxContactConstraints has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSystemSettings.maxContactConstraints has unexpected size % instead of 4", it.type.runtime_size);
                case "_padding";
                    assert(it.offset_in_bytes == 16, "JPH_PhysicsSystemSettings._padding has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSystemSettings._padding has unexpected size % instead of 4", it.type.runtime_size);
                case "broadPhaseLayerInterface";
                    assert(it.offset_in_bytes == 24, "JPH_PhysicsSystemSettings.broadPhaseLayerInterface has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_PhysicsSystemSettings.broadPhaseLayerInterface has unexpected size % instead of 8", it.type.runtime_size);
                case "objectLayerPairFilter";
                    assert(it.offset_in_bytes == 32, "JPH_PhysicsSystemSettings.objectLayerPairFilter has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_PhysicsSystemSettings.objectLayerPairFilter has unexpected size % instead of 8", it.type.runtime_size);
                case "objectVsBroadPhaseLayerFilter";
                    assert(it.offset_in_bytes == 40, "JPH_PhysicsSystemSettings.objectVsBroadPhaseLayerFilter has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_PhysicsSystemSettings.objectVsBroadPhaseLayerFilter has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_PhysicsSystemSettings) == 48, "JPH_PhysicsSystemSettings has size % instead of 48", size_of(JPH_PhysicsSystemSettings));
    }

    {
        info := type_info(JPH_PhysicsSettings);
        for info.members {
            if it.name == {
                case "maxInFlightBodyPairs";
                    assert(it.offset_in_bytes == 0, "JPH_PhysicsSettings.maxInFlightBodyPairs has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.maxInFlightBodyPairs has unexpected size % instead of 4", it.type.runtime_size);
                case "stepListenersBatchSize";
                    assert(it.offset_in_bytes == 4, "JPH_PhysicsSettings.stepListenersBatchSize has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.stepListenersBatchSize has unexpected size % instead of 4", it.type.runtime_size);
                case "stepListenerBatchesPerJob";
                    assert(it.offset_in_bytes == 8, "JPH_PhysicsSettings.stepListenerBatchesPerJob has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.stepListenerBatchesPerJob has unexpected size % instead of 4", it.type.runtime_size);
                case "baumgarte";
                    assert(it.offset_in_bytes == 12, "JPH_PhysicsSettings.baumgarte has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.baumgarte has unexpected size % instead of 4", it.type.runtime_size);
                case "speculativeContactDistance";
                    assert(it.offset_in_bytes == 16, "JPH_PhysicsSettings.speculativeContactDistance has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.speculativeContactDistance has unexpected size % instead of 4", it.type.runtime_size);
                case "penetrationSlop";
                    assert(it.offset_in_bytes == 20, "JPH_PhysicsSettings.penetrationSlop has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.penetrationSlop has unexpected size % instead of 4", it.type.runtime_size);
                case "linearCastThreshold";
                    assert(it.offset_in_bytes == 24, "JPH_PhysicsSettings.linearCastThreshold has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.linearCastThreshold has unexpected size % instead of 4", it.type.runtime_size);
                case "linearCastMaxPenetration";
                    assert(it.offset_in_bytes == 28, "JPH_PhysicsSettings.linearCastMaxPenetration has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.linearCastMaxPenetration has unexpected size % instead of 4", it.type.runtime_size);
                case "manifoldTolerance";
                    assert(it.offset_in_bytes == 32, "JPH_PhysicsSettings.manifoldTolerance has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.manifoldTolerance has unexpected size % instead of 4", it.type.runtime_size);
                case "maxPenetrationDistance";
                    assert(it.offset_in_bytes == 36, "JPH_PhysicsSettings.maxPenetrationDistance has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.maxPenetrationDistance has unexpected size % instead of 4", it.type.runtime_size);
                case "bodyPairCacheMaxDeltaPositionSq";
                    assert(it.offset_in_bytes == 40, "JPH_PhysicsSettings.bodyPairCacheMaxDeltaPositionSq has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.bodyPairCacheMaxDeltaPositionSq has unexpected size % instead of 4", it.type.runtime_size);
                case "bodyPairCacheCosMaxDeltaRotationDiv2";
                    assert(it.offset_in_bytes == 44, "JPH_PhysicsSettings.bodyPairCacheCosMaxDeltaRotationDiv2 has unexpected offset % instead of 44", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.bodyPairCacheCosMaxDeltaRotationDiv2 has unexpected size % instead of 4", it.type.runtime_size);
                case "contactNormalCosMaxDeltaRotation";
                    assert(it.offset_in_bytes == 48, "JPH_PhysicsSettings.contactNormalCosMaxDeltaRotation has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.contactNormalCosMaxDeltaRotation has unexpected size % instead of 4", it.type.runtime_size);
                case "contactPointPreserveLambdaMaxDistSq";
                    assert(it.offset_in_bytes == 52, "JPH_PhysicsSettings.contactPointPreserveLambdaMaxDistSq has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.contactPointPreserveLambdaMaxDistSq has unexpected size % instead of 4", it.type.runtime_size);
                case "numVelocitySteps";
                    assert(it.offset_in_bytes == 56, "JPH_PhysicsSettings.numVelocitySteps has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.numVelocitySteps has unexpected size % instead of 4", it.type.runtime_size);
                case "numPositionSteps";
                    assert(it.offset_in_bytes == 60, "JPH_PhysicsSettings.numPositionSteps has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.numPositionSteps has unexpected size % instead of 4", it.type.runtime_size);
                case "minVelocityForRestitution";
                    assert(it.offset_in_bytes == 64, "JPH_PhysicsSettings.minVelocityForRestitution has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.minVelocityForRestitution has unexpected size % instead of 4", it.type.runtime_size);
                case "timeBeforeSleep";
                    assert(it.offset_in_bytes == 68, "JPH_PhysicsSettings.timeBeforeSleep has unexpected offset % instead of 68", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.timeBeforeSleep has unexpected size % instead of 4", it.type.runtime_size);
                case "pointVelocitySleepThreshold";
                    assert(it.offset_in_bytes == 72, "JPH_PhysicsSettings.pointVelocitySleepThreshold has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_PhysicsSettings.pointVelocitySleepThreshold has unexpected size % instead of 4", it.type.runtime_size);
                case "deterministicSimulation";
                    assert(it.offset_in_bytes == 76, "JPH_PhysicsSettings.deterministicSimulation has unexpected offset % instead of 76", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_PhysicsSettings.deterministicSimulation has unexpected size % instead of 1", it.type.runtime_size);
                case "constraintWarmStart";
                    assert(it.offset_in_bytes == 77, "JPH_PhysicsSettings.constraintWarmStart has unexpected offset % instead of 77", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_PhysicsSettings.constraintWarmStart has unexpected size % instead of 1", it.type.runtime_size);
                case "useBodyPairContactCache";
                    assert(it.offset_in_bytes == 78, "JPH_PhysicsSettings.useBodyPairContactCache has unexpected offset % instead of 78", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_PhysicsSettings.useBodyPairContactCache has unexpected size % instead of 1", it.type.runtime_size);
                case "useManifoldReduction";
                    assert(it.offset_in_bytes == 79, "JPH_PhysicsSettings.useManifoldReduction has unexpected offset % instead of 79", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_PhysicsSettings.useManifoldReduction has unexpected size % instead of 1", it.type.runtime_size);
                case "useLargeIslandSplitter";
                    assert(it.offset_in_bytes == 80, "JPH_PhysicsSettings.useLargeIslandSplitter has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_PhysicsSettings.useLargeIslandSplitter has unexpected size % instead of 1", it.type.runtime_size);
                case "allowSleeping";
                    assert(it.offset_in_bytes == 81, "JPH_PhysicsSettings.allowSleeping has unexpected offset % instead of 81", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_PhysicsSettings.allowSleeping has unexpected size % instead of 1", it.type.runtime_size);
                case "checkActiveEdges";
                    assert(it.offset_in_bytes == 82, "JPH_PhysicsSettings.checkActiveEdges has unexpected offset % instead of 82", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "JPH_PhysicsSettings.checkActiveEdges has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_PhysicsSettings) == 84, "JPH_PhysicsSettings has size % instead of 84", size_of(JPH_PhysicsSettings));
    }

    {
        info := type_info(JPH_BroadPhaseLayerFilter_Procs);
        for info.members {
            if it.name == {
                case "ShouldCollide";
                    assert(it.offset_in_bytes == 0, "JPH_BroadPhaseLayerFilter_Procs.ShouldCollide has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_BroadPhaseLayerFilter_Procs.ShouldCollide has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_BroadPhaseLayerFilter_Procs) == 8, "JPH_BroadPhaseLayerFilter_Procs has size % instead of 8", size_of(JPH_BroadPhaseLayerFilter_Procs));
    }

    {
        info := type_info(JPH_ObjectLayerFilter_Procs);
        for info.members {
            if it.name == {
                case "ShouldCollide";
                    assert(it.offset_in_bytes == 0, "JPH_ObjectLayerFilter_Procs.ShouldCollide has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_ObjectLayerFilter_Procs.ShouldCollide has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_ObjectLayerFilter_Procs) == 8, "JPH_ObjectLayerFilter_Procs has size % instead of 8", size_of(JPH_ObjectLayerFilter_Procs));
    }

    {
        info := type_info(JPH_BodyFilter_Procs);
        for info.members {
            if it.name == {
                case "ShouldCollide";
                    assert(it.offset_in_bytes == 0, "JPH_BodyFilter_Procs.ShouldCollide has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_BodyFilter_Procs.ShouldCollide has unexpected size % instead of 8", it.type.runtime_size);
                case "ShouldCollideLocked";
                    assert(it.offset_in_bytes == 8, "JPH_BodyFilter_Procs.ShouldCollideLocked has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_BodyFilter_Procs.ShouldCollideLocked has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_BodyFilter_Procs) == 16, "JPH_BodyFilter_Procs has size % instead of 16", size_of(JPH_BodyFilter_Procs));
    }

    {
        info := type_info(JPH_ShapeFilter_Procs);
        for info.members {
            if it.name == {
                case "ShouldCollide";
                    assert(it.offset_in_bytes == 0, "JPH_ShapeFilter_Procs.ShouldCollide has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_ShapeFilter_Procs.ShouldCollide has unexpected size % instead of 8", it.type.runtime_size);
                case "ShouldCollide2";
                    assert(it.offset_in_bytes == 8, "JPH_ShapeFilter_Procs.ShouldCollide2 has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_ShapeFilter_Procs.ShouldCollide2 has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_ShapeFilter_Procs) == 16, "JPH_ShapeFilter_Procs has size % instead of 16", size_of(JPH_ShapeFilter_Procs));
    }

    {
        info := type_info(JPH_SimShapeFilter_Procs);
        for info.members {
            if it.name == {
                case "ShouldCollide";
                    assert(it.offset_in_bytes == 0, "JPH_SimShapeFilter_Procs.ShouldCollide has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_SimShapeFilter_Procs.ShouldCollide has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_SimShapeFilter_Procs) == 8, "JPH_SimShapeFilter_Procs has size % instead of 8", size_of(JPH_SimShapeFilter_Procs));
    }

    {
        info := type_info(JPH_ContactListener_Procs);
        for info.members {
            if it.name == {
                case "OnContactValidate";
                    assert(it.offset_in_bytes == 0, "JPH_ContactListener_Procs.OnContactValidate has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_ContactListener_Procs.OnContactValidate has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactAdded";
                    assert(it.offset_in_bytes == 8, "JPH_ContactListener_Procs.OnContactAdded has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_ContactListener_Procs.OnContactAdded has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactPersisted";
                    assert(it.offset_in_bytes == 16, "JPH_ContactListener_Procs.OnContactPersisted has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_ContactListener_Procs.OnContactPersisted has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactRemoved";
                    assert(it.offset_in_bytes == 24, "JPH_ContactListener_Procs.OnContactRemoved has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_ContactListener_Procs.OnContactRemoved has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_ContactListener_Procs) == 32, "JPH_ContactListener_Procs has size % instead of 32", size_of(JPH_ContactListener_Procs));
    }

    {
        info := type_info(JPH_BodyActivationListener_Procs);
        for info.members {
            if it.name == {
                case "OnBodyActivated";
                    assert(it.offset_in_bytes == 0, "JPH_BodyActivationListener_Procs.OnBodyActivated has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_BodyActivationListener_Procs.OnBodyActivated has unexpected size % instead of 8", it.type.runtime_size);
                case "OnBodyDeactivated";
                    assert(it.offset_in_bytes == 8, "JPH_BodyActivationListener_Procs.OnBodyDeactivated has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_BodyActivationListener_Procs.OnBodyDeactivated has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_BodyActivationListener_Procs) == 16, "JPH_BodyActivationListener_Procs has size % instead of 16", size_of(JPH_BodyActivationListener_Procs));
    }

    {
        info := type_info(JPH_BodyDrawFilter_Procs);
        for info.members {
            if it.name == {
                case "ShouldDraw";
                    assert(it.offset_in_bytes == 0, "JPH_BodyDrawFilter_Procs.ShouldDraw has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_BodyDrawFilter_Procs.ShouldDraw has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_BodyDrawFilter_Procs) == 8, "JPH_BodyDrawFilter_Procs has size % instead of 8", size_of(JPH_BodyDrawFilter_Procs));
    }

    {
        info := type_info(JPH_CharacterContactListener_Procs);
        for info.members {
            if it.name == {
                case "OnAdjustBodyVelocity";
                    assert(it.offset_in_bytes == 0, "JPH_CharacterContactListener_Procs.OnAdjustBodyVelocity has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterContactListener_Procs.OnAdjustBodyVelocity has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactValidate";
                    assert(it.offset_in_bytes == 8, "JPH_CharacterContactListener_Procs.OnContactValidate has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterContactListener_Procs.OnContactValidate has unexpected size % instead of 8", it.type.runtime_size);
                case "OnCharacterContactValidate";
                    assert(it.offset_in_bytes == 16, "JPH_CharacterContactListener_Procs.OnCharacterContactValidate has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterContactListener_Procs.OnCharacterContactValidate has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactAdded";
                    assert(it.offset_in_bytes == 24, "JPH_CharacterContactListener_Procs.OnContactAdded has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterContactListener_Procs.OnContactAdded has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactPersisted";
                    assert(it.offset_in_bytes == 32, "JPH_CharacterContactListener_Procs.OnContactPersisted has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterContactListener_Procs.OnContactPersisted has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactRemoved";
                    assert(it.offset_in_bytes == 40, "JPH_CharacterContactListener_Procs.OnContactRemoved has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterContactListener_Procs.OnContactRemoved has unexpected size % instead of 8", it.type.runtime_size);
                case "OnCharacterContactAdded";
                    assert(it.offset_in_bytes == 48, "JPH_CharacterContactListener_Procs.OnCharacterContactAdded has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterContactListener_Procs.OnCharacterContactAdded has unexpected size % instead of 8", it.type.runtime_size);
                case "OnCharacterContactPersisted";
                    assert(it.offset_in_bytes == 56, "JPH_CharacterContactListener_Procs.OnCharacterContactPersisted has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterContactListener_Procs.OnCharacterContactPersisted has unexpected size % instead of 8", it.type.runtime_size);
                case "OnCharacterContactRemoved";
                    assert(it.offset_in_bytes == 64, "JPH_CharacterContactListener_Procs.OnCharacterContactRemoved has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterContactListener_Procs.OnCharacterContactRemoved has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactSolve";
                    assert(it.offset_in_bytes == 72, "JPH_CharacterContactListener_Procs.OnContactSolve has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterContactListener_Procs.OnContactSolve has unexpected size % instead of 8", it.type.runtime_size);
                case "OnCharacterContactSolve";
                    assert(it.offset_in_bytes == 80, "JPH_CharacterContactListener_Procs.OnCharacterContactSolve has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterContactListener_Procs.OnCharacterContactSolve has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_CharacterContactListener_Procs) == 88, "JPH_CharacterContactListener_Procs has size % instead of 88", size_of(JPH_CharacterContactListener_Procs));
    }

    {
        info := type_info(JPH_CharacterVsCharacterCollision_Procs);
        for info.members {
            if it.name == {
                case "CollideCharacter";
                    assert(it.offset_in_bytes == 0, "JPH_CharacterVsCharacterCollision_Procs.CollideCharacter has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterVsCharacterCollision_Procs.CollideCharacter has unexpected size % instead of 8", it.type.runtime_size);
                case "CastCharacter";
                    assert(it.offset_in_bytes == 8, "JPH_CharacterVsCharacterCollision_Procs.CastCharacter has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_CharacterVsCharacterCollision_Procs.CastCharacter has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_CharacterVsCharacterCollision_Procs) == 16, "JPH_CharacterVsCharacterCollision_Procs has size % instead of 16", size_of(JPH_CharacterVsCharacterCollision_Procs));
    }

    {
        info := type_info(JPH_DebugRenderer_Procs);
        for info.members {
            if it.name == {
                case "DrawLine";
                    assert(it.offset_in_bytes == 0, "JPH_DebugRenderer_Procs.DrawLine has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_DebugRenderer_Procs.DrawLine has unexpected size % instead of 8", it.type.runtime_size);
                case "DrawTriangle";
                    assert(it.offset_in_bytes == 8, "JPH_DebugRenderer_Procs.DrawTriangle has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_DebugRenderer_Procs.DrawTriangle has unexpected size % instead of 8", it.type.runtime_size);
                case "DrawText3D";
                    assert(it.offset_in_bytes == 16, "JPH_DebugRenderer_Procs.DrawText3D has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_DebugRenderer_Procs.DrawText3D has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_DebugRenderer_Procs) == 24, "JPH_DebugRenderer_Procs has size % instead of 24", size_of(JPH_DebugRenderer_Procs));
    }

    {
        info := type_info(JPH_SkeletonJoint);
        for info.members {
            if it.name == {
                case "name";
                    assert(it.offset_in_bytes == 0, "JPH_SkeletonJoint.name has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_SkeletonJoint.name has unexpected size % instead of 8", it.type.runtime_size);
                case "parentName";
                    assert(it.offset_in_bytes == 8, "JPH_SkeletonJoint.parentName has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JPH_SkeletonJoint.parentName has unexpected size % instead of 8", it.type.runtime_size);
                case "parentJointIndex";
                    assert(it.offset_in_bytes == 16, "JPH_SkeletonJoint.parentJointIndex has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JPH_SkeletonJoint.parentJointIndex has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JPH_SkeletonJoint) == 24, "JPH_SkeletonJoint has size % instead of 24", size_of(JPH_SkeletonJoint));
    }
}

