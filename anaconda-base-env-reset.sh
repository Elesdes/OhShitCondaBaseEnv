#!/bin/bash

# Create backup of actual conda and delete the conda bash
mv ~/anaconda3 ~/anaconda3_bck
rm ~/anaconda3_bck/anaconda.sh

# Install new Anaconda
mkdir -p ~/anaconda3
wget "https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh" -O ~/anaconda3/anaconda.sh
bash ~/anaconda3/anaconda.sh -b -u -p ~/anaconda3
rm -rf ~/anaconda3/anaconda.sh
~/anaconda3/bin/conda init bash

# Restore envs from backup to new Anaconda
mv ~/anaconda3_bck/envs ~/anaconda3

# Remove backup
rm ~/anaconda3_bck -rf

# Update conda
conda update --all -y
