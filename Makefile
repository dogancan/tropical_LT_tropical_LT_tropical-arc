# Binaries need to be linked dynamically to FST libs if Fst or Arc type DSO
# extensions are to be used.

# Set these two in command line make call or modify them here
FSTDIR=/Users/dogan/Work/software/openfst-1.4.1
CC=clang++ -std=c++11

UNAME := $(shell uname)

FSTINCDIR=$(FSTDIR)/include
INCS=$(FSTINCDIR)/fst/*.h $(FSTINCDIR)/fst/script/*.h $(FSTINCDIR)/fst/extensions/far/*.h
SOS=tropical_LT_tropical_LT_tropical-arc.so
LIBS=-lfst -lfstscript -lfstfarscript -lm -lpthread -ldl
OPT=-O2
CFLAGS=-I$(FSTINCDIR) $(OPT) -DFST_DL -fPIC

ifeq ($(UNAME), Linux)
  DSOFLAGS=-shared
else ifeq ($(UNAME), Darwin)
  DSOFLAGS=-bundle -flat_namespace -undefined suppress
endif

all: $(SOS)

tropical_LT_tropical_LT_tropical-arc.so: tropical_LT_tropical_LT_tropical-arc.o
	$(CC) $(DSOFLAGS) -o tropical_LT_tropical_LT_tropical-arc.so tropical_LT_tropical_LT_tropical-arc.o

tropical_LT_tropical_LT_tropical-arc.o: tropical_LT_tropical_LT_tropical-arc.cc $(INCS) Makefile
	$(CC) $(CFLAGS) -o $@ -c $*.cc

clean:
	rm -f *.o *.so *~
