#!/bin/bash
# Backup script for Batocera v40 using rclone - https://batocera.org/changelog

rclone sync /userdata/system/backup.sh onedrive:/Games/Batocera/system
rclone sync /userdata/system/batocera.conf onedrive:/Games/Batocera/system

echo "> SAVES sync" -------------------------------------------------------------------------------------
rclone sync /userdata/saves onedrive:/Games/Batocera/saves -P

echo "> BIOS sync" --------------------------------------------------------------------------------------
rclone sync /userdata/bios onedrive:/Games/Batocera/bios -P

echo "> ROMS sync" --------------------------------------------------------------------------------------
rclone sync /userdata/roms onedrive:/Games/Batocera/roms -P
