#!/bin/bash
sudo dd if=test1.img bs=4k count=2 skip=0 | xxd  | grep fd41 -A 30
