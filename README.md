# Native

- build with: `jai native_build.jai`
- run with: `bin/native_main`

Only tested on linux, and it currently requires `modules/jolt/linux/libjoltc.so` to be copied in `/bin`

# Wasm

- build with `jai wasm_build.jai`
- run by starting the server `python server.py`, or `python3 server.py` and open the browser at `http://localhost:8085/public/`.

The build on linux currently fails with:

```
Running linker: /home/gui/work/web/games/jai/compiler/jai-beta-2-008/jai//bin/lld-linux -flavor wasm -mwasm64 --no-entry --export-dynamic --import-undefined -o /home/gui/work/web/games/simple_physics_lib_for_jai_and_wasm/public/main.wasm /home/gui/work/web/games/simple_physics_lib_for_jai_and_wasm/.build/main_0_w3.o --stack-first -z stack-size=24576 /home/gui/work/web/games/simple_physics_lib_for_jai_and_wasm/modules/walloc/walloc.o /home/gui/work/web/games/simple_physics_lib_for_jai_and_wasm/modules/jolt/wasm/libJolt.a /home/gui/work/web/games/simple_physics_lib_for_jai_and_wasm/modules/jolt/wasm/libjoltc.a
lld-linux: error: /home/gui/work/web/games/simple_physics_lib_for_jai_and_wasm/modules/jolt/wasm/libJolt.a(ConvexHullShape.cpp.o): undefined symbol: vtable for std::__2::basic_ios<char, std::__2::char_traits<char>>
lld-linux: error: /home/gui/work/web/games/simple_physics_lib_for_jai_and_wasm/modules/jolt/wasm/libJolt.a(ConvexHullShape.cpp.o): undefined symbol: vtable for std::__2::ios_base
lld-linux: error: /home/gui/work/web/games/simple_physics_lib_for_jai_and_wasm/modules/jolt/wasm/libjoltc.a(joltc.cpp.o): undefined symbol: std::__2::cout
lld-linux: error: /home/gui/work/web/games/simple_physics_lib_for_jai_and_wasm/modules/jolt/wasm/libjoltc.a(joltc.cpp.o): undefined symbol: std::__2::cout
lld-linux: error: /home/gui/work/web/games/simple_physics_lib_for_jai_and_wasm/modules/jolt/wasm/libjoltc.a(joltc.cpp.o): undefined symbol: std::__2::ctype<char>::id
```