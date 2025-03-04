CC := clang
CFLAGS := $(shell tail -n +3 compile_flags.txt)
PROJECT := new_math
SRC := src
TEST := tests
UNITY := $(TEST)/unity/src
ALL_CFLAGS := -Iinclude -I$(UNITY) -Ofast $(CFLAGS)
PREREQUISITES := $(SRC)/$(PROJECT).c
TEST_PREREQUISITES := $(TEST)/test_$(PROJECT).c $(UNITY)/unity.c
BIN := build
TARGET_TEST := $(BIN)/$(PROJECT).out.test

$(TARGET_TEST): $(PREREQUISITES) $(TEST_PREREQUISITES)
	@ mkdir -p $(BIN)
	$(CC) $(ALL_CFLAGS) $^ -o $@ -Wno-nan-infinity-disabled

.PHONY: b build
b: build
build: $(TARGET_TEST)

.PHONY: t test
t: test
test: $(TARGET_TEST)
	./$<

.PHONY: c clean
c: clean
clean:
	rm -rfv $(BIN)
