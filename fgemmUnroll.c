void fgemm(int m, int n, int k, float *A, float *B, float *C) {
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            float sum = 0.0;
	    int p;
            for (p = 0; p < k - 4; p += 4) {
                sum += A[i * k] * B[p * n + j];  // Optimize here
                sum += A[i * k + 1] * B[(p + 1) * n + j];  // Optimize here
                sum += A[i * k + 2] * B[(p + 2) * n + j];  // Optimize here
                sum += A[i * k + 3] * B[(p + 3)* n + j];  // Optimize here
            }
            C[i * n + j] = sum;  // Store result in C
        }
    }
}
