ID := hello_world

SRC_DIR := ./src
BUILD_DIR := ./build
BIN_DIR := $(BUILD_DIR)
OBJ_DIR := $(BUILD_DIR)/obj

AS := nasm
AS_FLAGS := -felf64
AS_EXT := .nasm

LD := ld
LD_FLAGS :=

MKDIR_P = mkdir -p

SRC := $(SRC_DIR)/$(ID)$(AS_EXT)
OBJ := $(OBJ_DIR)/$(ID).o
BIN := $(BIN_DIR)/$(ID)

all: $(BIN)

$(BIN): $(OBJ)
	@[ -d $(OBJ_DIR) ] || $(MKDIR_P) $(BIN_DIR)
	$(LD) $(LD_FLAGS) $< -o $@

$(OBJ): $(SRC)
	@[ -d $(OBJ_DIR) ] || $(MKDIR_P) $(OBJ_DIR)
	$(AS) $(AS_FLAGS) $< -o $@

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
