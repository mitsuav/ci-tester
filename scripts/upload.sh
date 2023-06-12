#!/bin/bash

cd ~
echo "Uploading File"
#curl -F file=@out/target/product/merlinx/*.zip https://store1.gofile.io/uploadFile
curl bashupload.com -T out/target/product/merlinx/*.zip
#curl -T out/target/product/merlinx/boot.img temp.sh

# Exit
exit 0
