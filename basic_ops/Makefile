MAIN := main.c
BIN := basic_ops

SRC_DIR := ./src
BUILD_DIR := ./build
BIN_DIR := $(BUILD_DIR)
OBJ_DIR := $(BUILD_DIR)/obj

AS := nasm
AS_FLAGS := -felf64
AS_EXT := .nasm

CC := gcc
CC_FLAGS := -Wall -z noexecstack -fPIC -O2

MKDIR_P = mkdir -p

SRCS := $(shell find $(SRC_DIR) -name *$(AS_EXT))
OBJS := $(subst $(SRC_DIR),$(OBJ_DIR),$(SRCS:%$(AS_EXT)=%.o))
PATH_MAIN := $(SRC_DIR)/$(MAIN)
PATH_BIN := $(BIN_DIR)/$(BIN)

all: $(PATH_BIN)

$(PATH_BIN): $(OBJS) $(PATH_MAIN)
	@[ -d $(BIN_DIR) ] || $(MKDIR_P) $(BIN_DIR)
	$(CC) $(CC_FLAGS) -o $@ $< $(PATH_MAIN)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%$(AS_EXT)
	@[ -d $(OBJ_DIR) ] || $(MKDIR_P) $(OBJ_DIR)
	$(AS) $(AS_FLAGS) $< -o $@

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
