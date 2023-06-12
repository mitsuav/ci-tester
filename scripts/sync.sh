#!/bin/bash 

# Change to the Home Directory
cd ~

repo init --depth=1 --no-repo-verify -u https://github.com/Evolution-X/manifest.git -b tiramisu --git-lfs -g default,-mips,-darwin,-notdefault
git clone https://github.com/mitsu00/local_manifest.git --depth=1 -b evox-13-staging .repo/local_manifests
repo sync -qc --no-clone-bundle --optimized-fetch --prune --force-sync --fail-fast -j8

echo "clang check: "
ls /root/prebuilts/clang/host/linux-x86/


# Exit
exit 0
