#!/bin/bash 

# Default GMS flags sets (Override the values on lineage_xxx.mk)
export WITH_GMS=true
export TARGET_CORE_GMS=false
export TARGET_CORE_GMS_EXTRAS=true
export TARGET_USE_GOOGLE_TELEPHONY=true


export TARGET="recoveryimage"

export OUTPUT="*.zip"
# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="100G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=8
