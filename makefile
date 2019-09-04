# compiler
CC = gcc

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -Wall -pedantic -g

# the build target executable:
TARGET = main

<<<<<<< HEAD
all: build run

build: main.c matrix.c
	$(CC) $(CFLAGS) -o $(TARGET) main.c matrix.c
=======
all: $(TARGET) run

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c
>>>>>>> 1c4d06b8fc48acf64c62f28fe53123366b2110a3

clean:
	$(RM) $(TARGET)

<<<<<<< HEAD
run:
=======
run: 
>>>>>>> 1c4d06b8fc48acf64c62f28fe53123366b2110a3
	./$(TARGET)
