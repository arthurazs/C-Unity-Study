# C Study for unit testing with Unity

Unity files are from [Unity](https://github.com/ThrowTheSwitch/Unity).
CC set to clang.

```bash
$ clang --version
Ubuntu clang version 18.1.3 (1ubuntu1)
Target: x86_64-pc-linux-gnu
Thread model: posix
InstalledDir: /usr/bin

$ make b  # make build
clang -Iinclude -Ofast -std=c99 -Weverything -Werror -Wno-unsafe-buffer-usage -Wno-declaration-after-statement -Wno-covered-switch-default -pedantic-errors src/new_math.c tests/test_new_math.c src/unity.c -o build/new_math.out.test -Wno-nan-infinity-disabled

$ make t  # make test
./build/new_math.out.test
tests/test_new_math.c:14:test_add:PASS

-----------------------
1 Tests 0 Failures 0 Ignored
OK

$ make c  # make clean
rm -rfv build
removed 'build/new_math.out.test'
removed directory 'build'

```
