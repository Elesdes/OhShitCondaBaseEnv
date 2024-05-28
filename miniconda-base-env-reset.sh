#!/bin/bash

# Create backup of actual conda and delete the conda bash
mv ~/miniconda3 ~/miniconda3_bck
rm ~/miniconda3_bck/miniconda.sh

# Install new conda
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash

# Restore envs from backup to new conda
mv ~/miniconda3_bck/envs ~/miniconda3

# Remove backup
rm ~/miniconda3_bck -rf

# Update conda
conda update --all -y
