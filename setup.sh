#! /bin/bash
curl -O https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo add-apt-repository "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/ /"
sudo apt update
sudo apt install -y cuda
sudo ln -s /usr/local/cuda-11.1/targets/x86_64-linux/include/CL /usr/include
sudo ln -s /usr/local/cuda-11.1/lib64/libOpenCL.so.1 /usr/lib/libOpenCL.so
wget -c https://github.com/johguse/ERADICATE2/archive/v0.4.tar.gz -O - | sudo tar -xz -C /usr/local/ERADICATE2/
cd /usr/local/ERADICATE2/
sudo make