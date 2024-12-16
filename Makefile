CXX = g++
CXXFLAGS = -std=c++11 -Wall

LIBRARY = libcalculator.a
TARGET = calculator_program
SOURCES = src/main.cpp src/calculator.cpp
OBJECTS = $(SOURCES:.cpp=.o)

all: $(LIBRARY) $(TARGET)

$(LIBRARY): src/calculator.o
	ar rcs $(LIBRARY) src/calculator.o

$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJECTS) $(LIBRARY)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(LIBRARY) $(OBJECTS)
