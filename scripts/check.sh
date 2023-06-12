#!/bin/bash

echo "Check Free RAM:"
free -h
echo "-----------------"
echo ""
echo "Check Free Disk:"
df -h
echo "-----------------"
echo ""
echo "clang check: "
ls /root/prebuilts/clang/host/linux-x86/


exit 0