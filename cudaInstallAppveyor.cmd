@echo off
echo Downloading CUDA toolkit 9
appveyor DownloadFile https://developer.nvidia.com/compute/cuda/9.2/Prod/local_installers/cuda_9.2.88_win10 -FileName cuda_9.2.88_win10
dir
echo Installing CUDA toolkit 9
cuda_9.2.88_win10 -s nvcc_9.2 ^
                   cublas_9.2 ^
                   cublas_dev_9.2 ^
                   cudart_9.2 ^
                   curand_9.2 ^
                   curand_dev_9.2

echo CUDA toolkit 9 installed

dir "%ProgramFiles%"

set PATH=%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v9.2\bin;%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v9.2\libnvvp;%PATH%

nvcc -V