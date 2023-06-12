#!/bin/bash 

# Source Vars
source $CONFIG

# Change to the Home Directory
cd ~
mkdir ~/.bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
chmod a+x ~/.bin/repo
echo "export PATH=~/bin:$PATH" >> ~/.bashrc

# Clone the Sync Repo
# Initialize local repository

repo init --depth=1 --no-repo-verify -u https://github.com/alphadroid-project/manifest -b alpha-13 --git-lfs -g default,-mips,-darwin,-notdefault
git clone https://github.com/mitsu00/local_manifest.git --depth 1 -b alpha .repo/local_manifests
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync --fail-fast -j8

ls
# Exit
exit 0
