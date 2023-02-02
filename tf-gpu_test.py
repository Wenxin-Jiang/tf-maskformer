import tensorflow as tf

if __name__ == "__main__":
	gpu_available = tf.test.is_gpu_available()
	is_cuda_gpu_available = tf.test.is_gpu_available(cuda_only=True)
	is_cuda_gpu_min_3 = tf.test.is_gpu_available(True, (3,0))
	print(gpu_available, is_cuda_gpu_available, is_cuda_gpu_min_3)
	print(f"gpu_available={gpu_available},\nis_cuda_gpu_available={is_cuda_gpu_available},\nis_cuda_gpu_min_3={is_cuda_gpu_min_3}\n")

