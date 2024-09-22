# Péter's Batocera Scripts

A collection of scripts I use to enhance my [Batocera](https://batocera.org/) setup.

## Documentation

### backup

> ⚠️ Please note that this script in currently under development and not ready for use.

This script uses [rclone](https://rclone.org/) to periodically backup your data to your cloud storage (OneDrive, Google Drive, Dropbox, etc.). By default, it only backs up saves, but you can configure it to include other data as well. It uses Batocera's [services](https://wiki.batocera.org/launch_a_script#services) feature.

#### Setup

1. Copy the [backup](/services/backup) script to your Batocera installation's `/userdata/system/services` directory.
2. Modify the [configuration](/services/backup#L3) at the top of the file according to your needs.
3. Follow the steps in one of the methods [here](https://rclone.org/remote_setup/) and set up a remote with the name `backup`.
4. Restart Batocera or use `batocera-services start backup`.

#### Usage

To do a manual backup: `bash backup manual`

To continuously monitor progress: `watch -n 0.5 batocera-services status backup`

## Development

Open this repository in VS Code and install the [workspace recommended extensions](https://code.visualstudio.com/docs/editor/extension-marketplace#_workspace-recommended-extensions), so the scripts can be [automatically copied](/.vscode/settings.json#L6) to the Batocera machine on save. Local dependencies that need to be installed for the copying to work: `sshpass`, `scp`.
