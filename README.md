Instructions to Run programs


Deprecated Programs
===================
(1) Reduction - Difficulty working with templates
Uncomment lines as specieified in code for each run, save, and then run the following:

nvcc -o reduct -arch=compute_86 -code=sm_86 reduct_slow_testing.cu
srun --gres=gpu ./reduct
-------------------

Non-Tensor Programs
===================
(1) Neural Network without Training Data

nvcc -o nn -arch=compute_86 -code=sm_86 nn.cu
srun --gres=gpu ./nn
-------------------
(2) Matrix Vector Multiply

nvcc -o mv -arch=compute_86 -code=sm_86 mv_mul.cu
srun --gres=gpu ./mv
-------------------

Tensor Program
===================


