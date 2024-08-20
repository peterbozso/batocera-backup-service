# Scripting Batocera

The information on [this wiki page](https://wiki.batocera.org/launch_a_script) is outdated.

According to v38's changelog:

> * batocera-services - custom.sh is deprecated and may be removed in a later version.
> * Put your services into /userdata/system/services, and enable them in batocera.conf (syncthing may be reenabled).

So the way forward (from [Discord](https://discord.com/channels/357518249883205632/524321176068161554/1275190863332642900)) is:

> While it will still work in v39, longer term, yes, you should replace /userdata/system/custom.sh by /userdata/system/services/what_ever_name_you_want. Check the command line batocera-services: one of the additional benefits is that you can now have more than one custom.sh script and you can enable and disable them individually, from the command line or even from EmulationStation now (System settings -> Services).

Make sure that the filename is without the `.sh` extension.

To debug setup, use: `bash -x batocera-services list`
