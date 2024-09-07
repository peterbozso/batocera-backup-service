# Péter's Batocera Scripts

A collection of scripts I use to enhance my [Batocera](https://batocera.org/) setup.

## Services

They use Batocera's [services](https://wiki.batocera.org/launch_a_script#services) feature.

They all need to be installed the same way:

1. Copy the respective script file from the [services](/services/) directory of this repo into your Batocera installation's `/userdata/system/services` directory.
2. Do the necessary customization for each according to it's setup instructions below.

### backup

This one uses [rclone](https://rclone.org/) to periodically backup your data to your cloud storage account (OneDrive, Google Drive, Dropbox, etc.).

#### Setup

Follow the steps of one of the methods [here](https://rclone.org/remote_setup/) and set up a remote of your choice with the name `backup`.

#### Usage

To do a manual sync:

```bash
chmod +x backup
bash backup manual
```

To continuously monitor progress: `watch batocera-services status backup`

## Development

Install [workspace recommended extensions in VS Code](https://code.visualstudio.com/docs/editor/extension-marketplace#_workspace-recommended-extensions), so the scripts can be [automatically copied](/.vscode/settings.json#L6) to the Batocera machine on save.

Local dependencies that need to be installed for the copying to work: `sshpass`, `scp`.
