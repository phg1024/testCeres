CFLAGS=-fopenmp -m64
INCLUDES=-I/usr/include/eigen3
LIBS=-lceres -L/usr/local/lib -lglog -lgflags
LIBS += -lcholmod -lcamd -lamd -lccolamd -lcolamd -lsuitesparseconfig -lcxsparse
LIBS += -L/opt/intel/lib/intel64 -L/opt/intel/mkl/lib/intel64 -lmkl_intel_lp64 -lmkl_core -lmkl_intel_thread -liomp5 -ldl -lpthread -lm
all:
	g++ -O2 $(INCLUDES) main.cpp -o main $(LIBS)
clean:
	rm main
