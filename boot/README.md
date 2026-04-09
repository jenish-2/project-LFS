## Clone Ubantu Drive

1. Get Bootable  drive & boot from USB:
   >> apt install usb-creator-gtk
   >> usb-creator-gtk
   >> sudo dd if=ubuntu-24.04-desktop-amd64.iso of=/dev/sdX bs=4M status=progress oflag=sync

2. Check existing partition and filesystem, clean, verify and Clone:
`df -h`
`lsblk`
>> sudo wipefs -a /dev/nvme1n1
>> sudo dd if=/dev/nvme0n1 of=/dev/nvme1n1 bs=64K status=progress
