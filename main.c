#include <stdio.h>
#include <stdlib.h>

// Declare the fgemm function from fgemm.c
void fgemm(int m, int n, int k, float *A, float *B, float *C);

int main() {
    // Matrix dimensions
    int m = 1024;  // Rows for matrix A and C
    int n = 1024;  // Columns for matrix B and C
    int k = 1024;  // Columns for matrix A and rows for matrix B

    // Dynamically allocate memory for matrices A, B, and C
    float *A = (float *)malloc(m * k * sizeof(float));  // Matrix A: m x k
    float *B = (float *)malloc(k * n * sizeof(float));  // Matrix B: k x n
    float *C = (float *)malloc(m * n * sizeof(float));  // Matrix C: m x n

    // Perform matrix multiplication: C = A * B
    fgemm(m, n, k, A, B, C);

    // Free dynamically allocated memory
    free(A);
    free(B);
    free(C);

    return 0;
}
