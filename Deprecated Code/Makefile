CC=gcc
CFLAGS=-g -Wall --std=c99 -Wno-unknown-pragmas -O3
NFLAGS=-ccbin $(CC) -g -O3 -arch=compute_86 -code=sm_86
LIB=-lm
TARGETS=tensor16 tensor32

all: $(TARGETS)

tensor16: tensor_core_matrix_multiply16.cu
	nvcc $(NFLAGS) -o $@ $< $(LIB)

tensor32: tensor_core_matrix_multiply32.cu
	nvcc $(NFLAGS) -o $@ $< $(LIB)

clean:
	rm -f $(TARGETS)