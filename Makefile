# compiler
FC = gfortran

# compiler flags
# standard
CFLAGS = # -std=f2008ts
# warning flags
CFLAGS += -Wall
# debugging options
CFLAGS += -fPIC -fcheck=all -fbacktrace -fmax-errors=3
# GDB flag
CFLAGS += -g

# lib flags
LFLAGS = -pthread -I/usr/lib/x86_64-linux-gnu/openmpi/lib -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi_usempif08 -lmpi_usempi_ignore_tkr -lmpi_mpifh -lmpi

# source files
SRCS = mod_learn main
OBJS = $(SRCS:=.o)

# executable
MAIN = main

# compile project
all : $(MAIN)
	@echo Model compiled

$(MAIN)	: $(OBJS)
	$(FC) $(CFLAGS) -o $(MAIN) $(OBJS) $(LFLAGS)

.SUFFIXES : .o .f90

.f90.o :
	$(FC) $(CFLAGS) $(LFLAGS) -c $<

clean :
	$(RM) *.o *.so *.mod $(MAIN)
