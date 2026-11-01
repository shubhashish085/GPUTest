#include <iostream>
#include <cuda_runtime.h>

__global__ void print_kernel(){
    std::cout << "Hello world" << std::endl;
}

int main (){
    print_kernel<<<1,1>>>();
    
    cudaDeviceSynchronize();
    
    return 0;
    
}