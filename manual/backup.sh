#!/bin/bash
# Backup script for Batocera v40 using rclone - https://batocera.org/changelog

rclone sync /userdata/system/batocera.conf backup:/Games/Batocera/system

echo "> SAVES sync" -------------------------------------------------------------------------------------
rclone sync /userdata/saves backup:/Games/Batocera/saves -P --exclude flatpak

echo "> ROMS sync" --------------------------------------------------------------------------------------
rclone sync /userdata/roms backup:/Games/Batocera/roms -P --exclude flatpak

echo "> BIOS sync" --------------------------------------------------------------------------------------
rclone sync /userdata/bios backup:/Games/Batocera/bios -P
