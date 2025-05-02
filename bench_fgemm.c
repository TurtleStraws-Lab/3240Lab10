#include <stdio.h>
#include <stdlib.h>

void fgemm(int m, int n, int k, float *A, float *B, float *C);

int main() {
    int m = 1024;  
    int n = 1024; 
    int k = 1024; 

    float *A = (float *)malloc(m * k * sizeof(float)); 
    float *B = (float *)malloc(k * n * sizeof(float));
    float *C = (float *)malloc(m * n * sizeof(float));

    fgemm(m, n, k, A, B, C);

    
    free(A);
    free(B);
    free(C);

    return 0;
}

