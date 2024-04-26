NFLAGS=-arch=compute_86 -code=sm_86
TARGETS=MMFP16 MMBF16 MMFP32 MMFP64

all: $(TARGETS)

MMFP16: MM_Lower_Precisions.cu
	nvcc -DUSE_FP16 $(NFLAGS) -o $@ $< 

MMBF16: MM_Lower_Precisions.cu
	nvcc -DUSE_BF16 $(NFLAGS) -o $@ $< 

MMFP32: MM_Lower_Precisions.cu
	nvcc -DUSE_FP32 $(NFLAGS) -o $@ $< 

MMFP64: MM_Lower_Precisions.cu
	nvcc -DUSE_FP64 $(NFLAGS) -o $@ $< 


clean: 
	rm -f $(TARGETS)