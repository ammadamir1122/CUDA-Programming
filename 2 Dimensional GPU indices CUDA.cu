
#include <stdio.h>
__global__ void myHelloOnGPU(int *array) {
    array[blockIdx.x] = blockIdx.x;
}
int main() {
    int N = 16;
    int *cpuArray = (int*)malloc(sizeof(int)*N);
    int *gpuArray;
    cudaMalloc((void **)&gpuArray, sizeof(int)*N);
    dim3 dimGrid(N, 1, 1); dim3 dimBlock(1, 1, 1);
    myHelloOnGPU<<<dimGrid, dimBlock>>>(gpuArray);
    cudaMemcpy(cpuArray, gpuArray, sizeof(int)*N,
    cudaMemcpyDeviceToHost);
    int i, j;
    for (j = 0; j < N/4; j++) {
        for (i = 0; i < N/4; i++) {
            printf("%2.2d ", cpuArray[j*N/4+i]);
        }
    printf("\n");
    }
printf("\n");
return 0;
}