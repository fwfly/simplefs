#!/bin/bash -x


SIMPLEFS_MOD=simplefs.ko
IMAGE=test1.img

sudo umount test1 2>/dev/null
sleep 1
sudo rmmod simplefs 2>/dev/null
sleep 1
(modinfo $SIMPLEFS_MOD || exit 1) && \
echo && \
sudo insmod $SIMPLEFS_MOD
#dd if=/dev/zero of=$IMAGE bs=1M count=$IMAGESIZE status=none && \
#./$MKFS $IMAGE && 
sudo mount -t simplefs -o loop $IMAGE test1
