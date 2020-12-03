wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub && sudo apt update
sudo dpkg -i cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
sudo apt update
sudo apt install -y cuda
wget https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
sudo dpkg -i nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
sudo apt update
sudo apt install -y libcudnn7 libcudnn7-dev libnccl2 libc-ares-dev
sudo apt autoremove
sudo apt upgrade
sudo mkdir -p /usr/local/cuda-10.0/nccl/lib
sudo ln -s /usr/lib/x86_64-linux-gnu/libnccl.so.2 /usr/local/cuda/nccl/lib/
sudo ln -s /usr/lib/x86_64-linux-gnu/libcudnn.so.7 /usr/local/cuda-10.0/lib64/
wget https://github.com/ethereum-mining/ethminer/releases/download/v0.16.1/ethminer-0.16.1-linux-x86_64.tar.gz
tar xvzf ethminer-0.16.1-linux-x86_64.tar.gz
cd  bin
./ethminer -U -P stratum://0x5172147B033B050FeC486c4E5d0Ddb720C902F66.aws@us2.ethermine.org:4444
