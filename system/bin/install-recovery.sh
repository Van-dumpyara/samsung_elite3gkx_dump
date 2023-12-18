#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:11542528:e661702530d0f2d3170defcae379a371ae7cc75a; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:10708992:518aaad5e9eeab2995f3b0463f627c3e5c91f72b EMMC:/dev/block/bootdevice/by-name/recovery e661702530d0f2d3170defcae379a371ae7cc75a 11542528 518aaad5e9eeab2995f3b0463f627c3e5c91f72b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
