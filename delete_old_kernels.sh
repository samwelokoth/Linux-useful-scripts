#!/bin/bash

# Get the list of installed kernels
kernel_list=$(dpkg --list | grep linux-image | awk '{print $2}')

# Loop through the kernel list
for kernel in $kernel_list; do
  # Check if the kernel version is below 4
  if [[ $(echo $kernel | awk -F'-' '{print $3}') < 4 ]]; then
    # Check if the kernel is not currently in use
    if [[ $(uname -r | grep -o $kernel) != $kernel ]]; then
      # Remove the kernel package
      echo "Removing kernel $kernel ..."
      sudo apt-get remove $kernel -y
    fi
  fi
done

# Update GRUB bootloader
sudo update-grub
