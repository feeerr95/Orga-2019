# compiler
CC = gcc

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -Wall -std=c99 -g

# the build target executable:
TARGET = main

all: build run

build: matrix.c main.c
	$(CC) $(CFLAGS) -o $(TARGET) matrix.c main.c

run:
	./$(TARGET)

assembly: matrix.c main.c
		$(CC) $(CFLAGS) -O0 -S -mrnames matrix.c main.c
