#! /bin/bash

#This is created by Rajesh Roy (rajeshroy402@gmail.com)

echo "This repo is owned and managed by Rajesh Roy <rajeshroy402@gmail.com>"

############################################################

sudo apt autoremove --purge libnvidia-container0 libnvidia-container-tools nvidia-container-csv-cuda nvidia-container-csv-cudnn nvidia-container-csv-tensorrt nvidia-container-csv-visionworks nvidia-container-runtime nvidia-container-toolkit nvidia-docker2 cuda-toolkit-10-2 libcudnn8 libcudnn8-dev libcudnn8-samples libopencv libopencv-dev libopencv-python libopencv-samples opencv-licenses graphsurgeon-tf libnvinfer8 libnvinfer-bin libnvinfer-dev libnvinfer-doc libnvinfer-plugin8 libnvinfer-plugin-dev libnvinfer-samples libnvonnxparsers8 libnvonnxparsers-dev libnvparsers8 libnvparsers-dev python3-libnvinfer python3-libnvinfer-dev tensorrt uff-converter-tf libvisionworks libvisionworks-dev libvisionworks-samples libvisionworks-sfm libvisionworks-sfm-dev libvisionworks-tracking libvisionworks-tracking-dev libnvvpi1 vpi1-dev vpi1-samples vpi1-demos nvidia-l4t-jetson-multimedia-api -y

sudo apt update && apt depends nvidia-jetpack | awk '{print $2}' | uniq | xargs -I {} bash -c "sudo apt clean ; sudo apt install -y {}"

