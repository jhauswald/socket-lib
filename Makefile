CXX = g++
CXX_FLAGS = -O3 \

LINKFLAGS = 

SRC=src
TARGET = libsocket.a

SOURCES = $(wildcard *.cpp)
OBJECTS = $(SOURCES:.cpp=.o)

$(TARGET): $(OBJECTS) Makefile
	ar rcs $(TARGET) $(OBJECTS)

# To obtain object files
%.o: %.cpp Makefile
	$(CXX) -c $(CXX_FLAGS) $< -o $@

clean:
	rm -f *.a *.o
