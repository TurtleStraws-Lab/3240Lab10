void fgemm(int m, int n, int k, float *A, float *B, float *C) {
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            float sum = 0.0;
            for (int p = 0; p < k; p++) {
                sum += A[i * k + p] * B[p * n + j];  // Optimize here
            }
            C[i * n + j] = sum;  // Store result in C
        }
    }
}
