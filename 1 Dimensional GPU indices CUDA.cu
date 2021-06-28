/* Name: task5.cu
*/
#include <stdio.h>
__global__ void myHelloOnGPU(int *array) {
array[blockIdx.x] = blockIdx.x
}
int main() {
int N = 16;
int *cpuArray = (int*)malloc(sizeof(int)*N);
int *gpuArray;
cudaMalloc((void **)&gpuArray, sizeof(int)*N);
myHelloOnGPU<<<N, 1>>>(gpuArray);
cudaMemcpy(cpuArray, gpuArray, sizeof(int)*N,
cudaMemcpyDeviceToHost);
int i;
for (i = 0; i < N; i++) {
printf("%d ", cpuArray[i]);
}
printf("\n");
return 0;
}