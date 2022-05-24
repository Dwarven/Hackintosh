`GA-H77N-WIFI` `i7-3770` `HD4000` `ALC892` `BCM4322` `Atheros AR9280 (AR5BHB92)` `BCM94352HMB`

[Realtek Ethernet](https://bitbucket.org/RehabMan/os-x-realtek-network)

[DSDT-GA-H77N-WIFI-F2](https://www.tonymacx86.com/dsdt-database)

ALC892: [Lilu](https://github.com/vit9696/Lilu) + [AppleALC](https://github.com/acidanthera/AppleALC)

BCM94352HMB: 

- Wi-Fi: [Lilu](https://github.com/vit9696/Lilu) + [AirportBrcmFixup](https://github.com/acidanthera/AirportBrcmFixup)

- Bluetooth: [BrcmBluetoothInjector + BrcmFirmwareData + BrcmPatchRAM3](https://github.com/acidanthera/BrcmPatchRAM)

###  SIP fully Disable ⬇︎
- [x] `OpenCore config setup:` csrutil authenticated-root disable : 
- NVRAM ➤ Add ➤ boot-args `-v keepsyms=1`
- `csr-active-config` ➤ EF0F0000
- `SecureBootModel`  ➤ Disabled
--------------------------------------------------------------
- [x] `Clover config setup:` csrutil authenticated-root disable :
- `csr-active-config` ➤ 0xFEF
--------------------------------------------------------------
###  SIP Enable ⬇︎ 
- [x] `OpenCore config setup:` csrutil enable + csrutil authenticated-root disable :
- NVRAM ➤ Add ➤ boot-args `-v keepsyms=1`
- `csr-active-config` ➤ 00080000 
- `SecureBootModel`  ➤ Disabled
- IMPORTANT NOTE: This csrutil authenticated-root disable value cannot be used to install the program, if you want to use it you will have to change it after installation with ➤  `EF0F0000`
--------------------------------------------------------------

### HD4000

- macOS 12 use [OpenCore Legacy Patcher](https://github.com/dortania/OpenCore-Legacy-Patcher)
	- Fully Disable SIP
	- Open `OpenCore-Patcher` and choose `Post Install Root Patch`

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