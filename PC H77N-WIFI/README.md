`GA-H77N-WIFI` `i7-3770` `HD4000` `ALC892` `BCM4322`

[audio_CloverALC](https://github.com/toleda/audio_CloverALC)

[Realtek Ethernet](https://bitbucket.org/RehabMan/os-x-realtek-network)

[DSDT-GA-H77N-WIFI-F2](https://www.tonymacx86.com/dsdt-database)


### HD4000

- Apply `HD4k GFX` `HD4k HDMI` patch to DSDT with MaciASL

or

- using Clover Bootoloader
	- Download [Clover Configurator](https://mackie100projects.altervista.org/download-clover-configurator) here
	- Mount your EFI Partition
	- Open Finder and Go to `EFI\CLOVER` and Find `config.plist`
	- Right click on config.plist and choose `Open With Clover Configurator`
	- Go to `Graphics` Tab
	- Check at `inject Intel` and Type `0x1660003` in the `ig-platform-id` column
	- Save and Restart.

