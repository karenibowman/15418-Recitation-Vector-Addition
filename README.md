# An_Introduction_to_GPU_Programming
This is the code for "An introduction to GPU Programming with CUDA" by Oak Ridge Laboratory, modified for 15-418!


## Overview

This is code modified from [this](https://youtu.be/1cHx1baKqq0) video on Youtube by Siraj Raval, and the example https://www.olcf.ornl.gov/tutorials/cuda-vector-addition/. This is an introduction to parallel programming on the GPU by using Nvidia's CUDA toolkit. We're going to add two vectors together, and parallelize that process using CUDA (an extension of C). 

## Dependencies

* CUDA (https://developer.nvidia.com/cuda-downloads) 

## Usage

Run the following command to compile the sequential example

`nvcc add-seq.cu -o add_cuda_seq`

This command to execute

`./add_cuda_seq`


Run the following command to compile the parallel example

`nvcc add-par.cu -o add_cuda`

This command to execute

`./add_cuda`

And this command to profile (clock) it

`nvprof ./add_cuda`

## Credits

The credits for this code go to Nvidia, Siraj Raval & Oak Ridge Laboratory.