NFLAGS=-arch=compute_86 -code=sm_86
TARGETS=Scripts/MMFP16 Scripts/MMBF16 Scripts/MMFP32 Scripts/MMFP64

all: $(TARGETS)

Scripts/MMFP16: MM_Lower_Precisions.cu
	nvcc -DUSE_FP16 $(NFLAGS) -o $@ $< 

Scripts/MMBF16: MM_Lower_Precisions.cu
	nvcc -DUSE_BF16 $(NFLAGS) -o $@ $< 

Scripts/MMFP32: MM_Lower_Precisions.cu
	nvcc -DUSE_FP32 $(NFLAGS) -o $@ $< 

Scripts/MMFP64: MM_Lower_Precisions.cu
	nvcc -DUSE_FP64 $(NFLAGS) -o $@ $< 


clean: 
	rm -f $(TARGETS)