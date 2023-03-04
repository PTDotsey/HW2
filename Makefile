CXX = g++  # the compiler
CXXFLAGS = -std=c++20 -Wall  # flags for the compiler (use c++11 standards, turn on all optional warnings)
GDBINFO = -ggdb # include this to generate info needed to run gdb

all: main test

clean:
	rm test main 

test: test.cpp
	$(CXX) $(CXXFLAGS) test.cpp -o test

main: main.cpp
	$(CXX) $(CXXFLAGS) main.cpp -o main
