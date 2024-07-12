# Compiler
CC = gcc

# Compiler Flags
CFLAGS = -Wall -Wextra -I. -I/usr/local/etherlab/include

# Linker Flags
LDFLAGS = -L/usr/local/etherlab/lib

# Libraries to link
LDLIBS = -lethercat

# Source Files
SRCS = main_t_6.c ecat_data_buffer.c
# SRCS = main.c ecat_data_buffer.c

# Object Files
OBJS = $(SRCS:.c=.o)

# Executable
EXEC = main

# Default Target
all: $(EXEC)

# Linking
$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(EXEC) $(OBJS) $(LDLIBS)

# Compilation
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean
clean:
	rm -f $(OBJS) $(EXEC)

# PHONY Targets
.PHONY: all clean
