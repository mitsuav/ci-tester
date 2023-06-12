#!/bin/bash
cd ~
export ALLOW_MISSING_DEPENDENCIES=true
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
. build/envsetup.sh
export TZ=Asia/Jakarta
lunch evolution_merlinx-user
make evolution
make evolution
# make bootimage
# make init

echo ""
echo "ls current dir:"
ls -al
echo ""
echo "ls out dir:"
ls out/target/product/merlinx/
echo ""
echo "clang check: "
ls /root/prebuilts/clang/host/linux-x86/
# Exit
exit 0
