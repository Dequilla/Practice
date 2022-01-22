#--------------
# Setup
#--------------

PROGRAM=Debug

CC=gcc
LIB=-lm
INCLUDES=-Iinclude
FLAGS=-Wall

# Directories
SRC_DIR=src
OBJ_DIR=temp
BUILD_DIR=build

# Source and obj files
SRC=$(wildcard $(SRC_DIR)/*.c)
OBJ=$(subst .c,.o,$(subst $(SRC_DIR)/,$(OBJ_DIR)/,$(SRC)))

#---------------
# Builds
#---------------

debug: FLAGS += -DDEBUG -g3 -O0 
debug: clean all
	gdb -tui $(BUILD_DIR)/$(PROGRAM)

run: FLAGS += -g0 -O3
run: clean all
	./$(BUILD_DIR)/$(PROGRAM)

final: FLAGS += -g0 -O3
final: clean all

#---------------
# Steps
#---------------

all: create_folders build

create_folders:
	mkdir -p $(OBJ_DIR) $(BUILD_DIR)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(FLAGS) -o $@ -c $<
	

build: $(OBJ)
	$(CC) -o $(BUILD_DIR)/$(PROGRAM) $^ $(LIB)

clean:
	rm -rf $(OBJ) $(BUILD_DIR)/*
