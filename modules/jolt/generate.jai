#import "Basic";
#import "Compiler";
#import "Bindings_Generator";
#import "String";
#import "File";

JOLT_ROOT :: "/home/gui/work/web/github/joltc";

#run {
	set_build_options_dc(.{ do_output = false });
	file_name : string;
	opts : Generate_Bindings_Options;
	{
		using opts;
		if OS == {
			case .MACOS; {
				file_name = "macos.jai";
				array_add(*libpaths, "./macos");
				array_add(*libnames, "libjoltc");
			}
			case .WINDOWS; {
				file_name = "windows.jai";
				array_add(*libpaths, "./windows");
				array_add(*libnames, "joltc");
			}
			 case .LINUX; {
				file_name = "linux.jai";
				array_add(*libpaths, "./linux");
				array_add(*libnames, "libjoltc");
			}
		}
		array_add(*include_paths, "./");
		source_file := tprint("%/include/joltc.h", JOLT_ROOT);
		// source_file := tprint("%/src/Jolt.h", JOLT_ROOT);
		print("source_file:%\n", source_file);
		array_add(*source_files, source_file);
		log_stripped_declarations = true;
		auto_detect_enum_prefixes = true;
	}

	ok := generate_bindings(opts, file_name);
	if !ok {
		log_error("Failed to generate bindings");
		exit(1);
	}
	else {
		bindings_text := read_entire_file(file_name);
		bindings_text = replace(bindings_text, "interface:", "_interface:");
		write_entire_file(file_name, bindings_text);
	}
}