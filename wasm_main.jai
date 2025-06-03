
main :: () {
	print("wasm main() has started\n");
    jolt_start();
	print("wasm main() has completed\n");
}

#import "Basic";
#import "Math";
#import "jolt";
#load "common.jai";