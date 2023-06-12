#!/bin/bash

# Source Configs
source $CONFIG

# Change to the Source Directry
cd ~

# Set-up ccache
if [ -z "$CCACHE_SIZE" ]; then
    ccache -M 10G
else
    ccache -M ${CCACHE_SIZE}
fi

echo " "
. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export BUILD_USERNAME=ozipoetra
export BUILD_HOSTNAME=ozip.my.id
export TZ=Asia/Jakarta #put before last build command
lunch lineage_merlinx-user
mka sepolicy
mka bootimage
mka init

# Exit
exit 0
