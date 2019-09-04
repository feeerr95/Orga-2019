# compiler
CC = gcc

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -Wall -pedantic -g

# the build target executable:
TARGET = main

all: build run

build: main.c matrix.c
	$(CC) $(CFLAGS) -o $(TARGET) main.c matrix.c

clean:
	$(RM) $(TARGET)

run:
	./$(TARGET)