# Péter's Batocera Scripts

A collection of scripts I use to enhance my [Batocera](https://batocera.org/) setup.

## Usage

### backup

> ⚠️ Please note that this script in currently under development and not ready for use.

Uses [rclone](https://rclone.org/) to periodically backup your data to your cloud storage account (OneDrive, Google Drive, Dropbox, etc.).

By default, it only backs up saves, but you can configure it to include other data as well.

It uses Batocera's [services](https://wiki.batocera.org/launch_a_script#services) feature.

#### Setup

1. Copy the `backup` file from the [services](/services/) directory of this repo into your Batocera installation's `/userdata/system/services` directory.
2. If needed, modify the config at the top of the file.
3. Follow the steps of one of the methods [here](https://rclone.org/remote_setup/) and set up a remote with the name `backup`.
4. Restart Batocera or use `batocera-services restart backup`.

#### Usage

To do a manual backup:

```bash
chmod +x backup
bash backup manual
```

To continuously monitor progress: `watch batocera-services status backup`

## Development

Install [workspace recommended extensions in VS Code](https://code.visualstudio.com/docs/editor/extension-marketplace#_workspace-recommended-extensions), so the scripts can be [automatically copied](/.vscode/settings.json#L6) to the Batocera machine on save.

Local dependencies that need to be installed for the copying to work: `sshpass`, `scp`.
