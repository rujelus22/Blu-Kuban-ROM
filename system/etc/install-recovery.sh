#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p6:2048:a7fee0df91ce0d03cd22e32fa726c2ef678af79b; then
  log -t recovery "Installing new recovery image"
  applypatch EMMC:/dev/block/mmcblk0p5:8387840:38bd37012aea271e64e9519e8ffbdfcea374271e EMMC:/dev/block/mmcblk0p6 38bd37012aea271e64e9519e8ffbdfcea374271e 8387840 38bd37012aea271e64e9519e8ffbdfcea374271e:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
