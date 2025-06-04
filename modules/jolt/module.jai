#if OS == .WINDOWS {	
	#load "windows.jai";
	
	// TODO: These libs are required to build the static debug version of joltc.
	// Have a compile check to do the loads only in that case.
	// TODO: For some reason these must be after loading jolt bindings
	jolt     :: #library,no_dll,link_always "windows/Jolt";
	ucrtd    :: #library,system,link_always "ucrtd";
	msvcmrtd :: #library,system,link_always "msvcmrtd";
	libcpmtd :: #library,system,link_always "libcpmtd";
	
}  else #if OS == .MACOS {
	#load "mac.jai";
} else #if OS == .LINUX {
	#load "linux.jai";
} else #if OS == .WASM {
	#load "wasm.jai";
} else {
	assert(false);
}

