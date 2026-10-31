#include <stdio.h>
#include <cuda.h>

__global__ void print_kernel(){
    printf(“Hello world \n”);
}

int main (){
    print_kernel<<<1,1>>>();
    
    cudaDeviceSynchronize();
    
    return 0;
    
}