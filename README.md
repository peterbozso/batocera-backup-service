# Batocera Backup Service

> [!WARNING]
> Please note that the content of this repo is currently under development and not ready for use.

A script for [Batocera](https://batocera.org/) to backup your data to a cloud storage using [rclone](https://rclone.org/).

It has two modes:

* [Automatic](#automatic): using Batocera's [services](https://wiki.batocera.org/launch_a_script#services) feature, it periodically uploads your saves in the background.
* [Manual](#manual): by running the script manually, you can do a full backup of your data. 

## Setup

1. Copy the [backup](/services/backup) script to your Batocera installation's `/userdata/system/services` directory.
2. Modify the [configuration](/services/backup#L3) at the top of the file according to your needs.
3. Follow the steps in one of the methods [here](https://rclone.org/remote_setup/) and set up a remote with the name `backup`.
4. Restart Batocera or use `batocera-services start backup`.

## Usage

### Automatic

Refer to the [Batocera wiki](https://wiki.batocera.org/launch_a_script#services) to learn how to manage services.

To continuously monitor progress: `watch -n 0.5 batocera-services status backup`

### Manual

To do a manual backup: `bash services/backup manual`

This does a full backup including not just saves, but your configuration (`batocera.conf`), ROMs and BIOS files. Use this after you modify any of those.

## Development

Open this repository in VS Code and install the [workspace recommended extensions](https://code.visualstudio.com/docs/editor/extension-marketplace#_workspace-recommended-extensions), so the scripts can be [automatically copied](/.vscode/settings.json#L6) to the Batocera machine on save. Local dependencies that need to be installed for the copying to work: `sshpass`, `scp`.
