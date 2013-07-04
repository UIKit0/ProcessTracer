# Makefile for ProcessTracer

PREFIX = x86_64-w64-mingw32-
CC = $(PREFIX)gcc
CXX = $(PREFIX)g++

CPPFLAGS = -D_WIN32_WINNT=0x0601 -DWINVER=0x0601
CFLAGS = -Os -Wall -g
CXXFLAGS = $(CFLAGS)
LDFLAGS = -static-libgcc -static-libstdc++

LIBS = -ldbghelp

all : ProcessTracer.exe TrivialProgram.exe BadProgram.exe

clean :
	$(RM) *.exe *.o

# Rules

%.o: %.cpp
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ -c $<

%.exe: %.o
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ $(LDFLAGS) $^ $(LIBS)

# Dependencies

ProcessTracer.o: SimpleSymbolEngine.h

SimpleSymbolEngine.o: SimpleSymbolEngine.h

ProcessTracer.exe: SimpleSymbolEngine.o
