# Compiler
CC = gcc

# Compiler Flags
CFLAGS = -Wall -Wextra -I. -I/usr/local/etherlab/include

# Linker Flags
LDFLAGS = -L/usr/local/etherlab/lib

# Libraries to link
LDLIBS = -lethercat

# Source Files
SRCS = main.c ecat_data_buffer.c

# Object Files (placed in the build directory)
OBJS = $(patsubst %.c, build/%.o, $(SRCS))

# Executable (placed in the build directory)
EXEC = build/main

# Default Target
all: $(EXEC)

# Linking
$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(EXEC) $(OBJS) $(LDLIBS)

# Compilation (placing .o files in the build directory)
build/%.o: %.c | build
	$(CC) $(CFLAGS) -c $< -o $@

# Create build directory if it doesn't exist
build:
	mkdir -p build

# Clean
clean:
	rm -rf build $(EXEC)

# PHONY Targets
.PHONY: all clean
