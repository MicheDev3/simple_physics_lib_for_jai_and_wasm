#run {
    w := compiler_create_workspace("Target Program");

    options := get_build_options(w);

    set_working_directory(#filepath);

   	import_paths: [..]string;
	array_add(*import_paths, tprint("%/modules", #filepath));
	for options.import_path array_add(*import_paths, it);
	options.import_path = import_paths;
    options.output_path = "bin";
    options.output_executable_name = "native_main";

    set_build_options(options, w);

    // compiler_begin_intercept(w);
    add_build_file("native_main.jai", w);

    set_build_options_dc(.{do_output=false});

    // message_loop(w);
}

#import "Basic";
#import "String";
#import "Compiler";