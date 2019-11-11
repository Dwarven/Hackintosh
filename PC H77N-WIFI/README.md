`GA-H77N-WIFI` `i7-3770` `HD4000` `ALC892` `BCM4322` `Atheros AR9280 (AR5BHB92)` `BCM94352HMB`

[Realtek Ethernet](https://bitbucket.org/RehabMan/os-x-realtek-network)

[DSDT-GA-H77N-WIFI-F2](https://www.tonymacx86.com/dsdt-database)

ALC892: [Lilu](https://github.com/vit9696/Lilu) + [AppleALC](https://github.com/acidanthera/AppleALC)

BCM94352HMB: 

- Wi-Fi: [Lilu](https://github.com/vit9696/Lilu) + [AirportBrcmFixup](https://github.com/acidanthera/AirportBrcmFixup)

- Bluetooth: [BrcmBluetoothInjector + BrcmFirmwareData + BrcmPatchRAM3](https://github.com/acidanthera/BrcmPatchRAM)


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

```sh
~ tree EFI
EFI
├── APPLE
│   ├── EXTENSIONS
│   │   └── Firmware.scap
│   ├── FIRMWARE
│   │   └── IM131.scap
│   └── UPDATERS
│       └── MULTIUPDATER
│           ├── Mac-27ADBB7B4CEE8E61.epm
│           ├── MultiUpdater.efi
│           ├── SmcFlasher.efi
│           ├── flasher_base.smc
│           └── flasher_update.smc
├── BOOT
│   └── BOOTX64.efi
├── CLOVER
│   ├── ACPI
│   │   ├── WINDOWS
│   │   ├── origin
│   │   └── patched
│   │       ├── DSDT.aml
│   │       └── SSDT.aml
│   ├── CLOVERX64.efi
│   ├── OEM
│   │   └── SystemProductName
│   │       ├── UEFI
│   │       │   └── config-sample.plist
│   │       └── config-sample.plist
│   ├── ROM
│   ├── config-b.plist
│   ├── config-backup.plist
│   ├── config-install.plist
│   ├── config.plist
│   ├── doc
│   │   ├── HowToFixDsdt.txt
│   │   ├── HowToInstallOSX.txt
│   │   ├── Installation.txt
│   │   ├── UEFI\ boot\ with\ Clover.rtf
│   │   ├── bcfg.txt
│   │   └── boot1f32-install.sh
│   ├── drivers
│   │   ├── BIOS
│   │   └── UEFI
│   │       ├── ApfsDriverLoader.efi
│   │       ├── AppleImageCodec.efi
│   │       ├── AppleKeyAggregator.efi
│   │       ├── AppleKeyFeeder.efi
│   │       ├── AppleUITheme.efi
│   │       ├── AudioDxe.efi
│   │       ├── CsmVideoDxe.efi
│   │       ├── DataHubDxe.efi
│   │       ├── EmuVariableUefi.efi
│   │       ├── EnglishDxe.efi
│   │       ├── FSInject.efi
│   │       ├── Fat.efi
│   │       ├── FirmwareVolume.efi
│   │       ├── HashServiceFix.efi
│   │       ├── NvmExpressDxe.efi
│   │       ├── OsxAptioFix3Drv.efi
│   │       ├── OsxFatBinaryDrv.efi
│   │       ├── PartitionDxe.efi
│   │       ├── Ps2MouseDxe.efi
│   │       ├── SMCHelper.efi
│   │       ├── UsbKbDxe.efi
│   │       ├── UsbMouseDxe.efi
│   │       ├── VBoxExt2.efi
│   │       ├── VBoxExt4.efi
│   │       ├── VBoxHfs.efi
│   │       └── VBoxIso9600.efi
│   ├── kexts
│   │   ├── 10.11
│   │   ├── 10.12
│   │   ├── 10.13
│   │   ├── 10.14
│   │   ├── 10.15
│   │   ├── Off
│   │   └── Other
│   │       ├── AirportBrcmFixup.kext
│   │       │   └── Contents
│   │       │       ├── Info.plist
│   │       │       └── MacOS
│   │       │           └── AirportBrcmFixup
│   │       ├── AppleALC.kext
│   │       │   └── Contents
│   │       │       ├── Info.plist
│   │       │       └── MacOS
│   │       │           └── AppleALC
│   │       ├── BrcmBluetoothInjector.kext
│   │       │   └── Contents
│   │       │       └── Info.plist
│   │       ├── BrcmFirmwareData.kext
│   │       │   └── Contents
│   │       │       ├── Info.plist
│   │       │       └── MacOS
│   │       │           └── BrcmFirmwareData
│   │       ├── BrcmPatchRAM3.kext
│   │       │   └── Contents
│   │       │       ├── Info.plist
│   │       │       └── MacOS
│   │       │           └── BrcmPatchRAM3
│   │       ├── FakeSMC.kext
│   │       │   └── Contents
│   │       │       ├── Info.plist
│   │       │       ├── MacOS
│   │       │       │   └── FakeSMC
│   │       │       └── PlugIns
│   │       │           ├── ACPISensors.kext
│   │       │           │   └── Contents
│   │       │           │       ├── Info.plist
│   │       │           │       └── MacOS
│   │       │           │           └── ACPISensors
│   │       │           ├── CPUSensors.kext
│   │       │           │   └── Contents
│   │       │           │       ├── Info.plist
│   │       │           │       └── MacOS
│   │       │           │           └── CPUSensors
│   │       │           ├── GPUSensors.kext
│   │       │           │   └── Contents
│   │       │           │       ├── Info.plist
│   │       │           │       └── MacOS
│   │       │           │           └── GPUSensors
│   │       │           └── LPCSensors.kext
│   │       │               └── Contents
│   │       │                   ├── Info.plist
│   │       │                   └── MacOS
│   │       │                       └── LPCSensors
│   │       ├── Lilu.kext
│   │       │   └── Contents
│   │       │       ├── Info.plist
│   │       │       └── MacOS
│   │       │           └── Lilu
│   │       └── RealtekRTL8111.kext
│   │           └── Contents
│   │               ├── Info.plist
│   │               └── MacOS
│   │                   └── RealtekRTL8111
│   ├── misc
│   ├── themes
│   │   ├── BGM
│   │   │   ├── Anim_10_SMBIOS
│   │   │   │   ├── Anim_10_SMBIOS_000.png
│   │   │   │   ├── Anim_10_SMBIOS_001.png
│   │   │   │   ├── Anim_10_SMBIOS_002.png
│   │   │   │   ├── Anim_10_SMBIOS_003.png
│   │   │   │   ├── Anim_10_SMBIOS_004.png
│   │   │   │   ├── Anim_10_SMBIOS_005.png
│   │   │   │   ├── Anim_10_SMBIOS_006.png
│   │   │   │   ├── Anim_10_SMBIOS_007.png
│   │   │   │   ├── Anim_10_SMBIOS_008.png
│   │   │   │   ├── Anim_10_SMBIOS_009.png
│   │   │   │   ├── Anim_10_SMBIOS_010.png
│   │   │   │   ├── Anim_10_SMBIOS_011.png
│   │   │   │   ├── Anim_10_SMBIOS_012.png
│   │   │   │   ├── Anim_10_SMBIOS_013.png
│   │   │   │   └── Anim_10_SMBIOS_064.png
│   │   │   ├── Anim_11_Tables
│   │   │   │   ├── Anim_11_Tables_000.png
│   │   │   │   ├── Anim_11_Tables_001.png
│   │   │   │   ├── Anim_11_Tables_002.png
│   │   │   │   ├── Anim_11_Tables_003.png
│   │   │   │   ├── Anim_11_Tables_004.png
│   │   │   │   ├── Anim_11_Tables_005.png
│   │   │   │   ├── Anim_11_Tables_006.png
│   │   │   │   ├── Anim_11_Tables_007.png
│   │   │   │   ├── Anim_11_Tables_008.png
│   │   │   │   ├── Anim_11_Tables_009.png
│   │   │   │   ├── Anim_11_Tables_010.png
│   │   │   │   ├── Anim_11_Tables_011.png
│   │   │   │   ├── Anim_11_Tables_012.png
│   │   │   │   ├── Anim_11_Tables_013.png
│   │   │   │   └── Anim_11_Tables_064.png
│   │   │   ├── Anim_12_RC_Script
│   │   │   │   ├── Anim_12_RC_Script_000.png
│   │   │   │   ├── Anim_12_RC_Script_001.png
│   │   │   │   ├── Anim_12_RC_Script_002.png
│   │   │   │   ├── Anim_12_RC_Script_003.png
│   │   │   │   ├── Anim_12_RC_Script_004.png
│   │   │   │   ├── Anim_12_RC_Script_005.png
│   │   │   │   ├── Anim_12_RC_Script_006.png
│   │   │   │   ├── Anim_12_RC_Script_007.png
│   │   │   │   ├── Anim_12_RC_Script_008.png
│   │   │   │   ├── Anim_12_RC_Script_009.png
│   │   │   │   ├── Anim_12_RC_Script_010.png
│   │   │   │   ├── Anim_12_RC_Script_011.png
│   │   │   │   ├── Anim_12_RC_Script_012.png
│   │   │   │   ├── Anim_12_RC_Script_013.png
│   │   │   │   └── Anim_12_RC_Script_064.png
│   │   │   ├── Anim_13_PCI_Devices
│   │   │   │   ├── Anim_13_PCI_Devices_000.png
│   │   │   │   ├── Anim_13_PCI_Devices_001.png
│   │   │   │   ├── Anim_13_PCI_Devices_002.png
│   │   │   │   ├── Anim_13_PCI_Devices_003.png
│   │   │   │   ├── Anim_13_PCI_Devices_004.png
│   │   │   │   ├── Anim_13_PCI_Devices_005.png
│   │   │   │   ├── Anim_13_PCI_Devices_006.png
│   │   │   │   ├── Anim_13_PCI_Devices_007.png
│   │   │   │   ├── Anim_13_PCI_Devices_008.png
│   │   │   │   ├── Anim_13_PCI_Devices_009.png
│   │   │   │   ├── Anim_13_PCI_Devices_010.png
│   │   │   │   ├── Anim_13_PCI_Devices_011.png
│   │   │   │   ├── Anim_13_PCI_Devices_012.png
│   │   │   │   ├── Anim_13_PCI_Devices_013.png
│   │   │   │   └── Anim_13_PCI_Devices_064.png
│   │   │   ├── Anim_14_Themes
│   │   │   │   ├── Anim_14_Themes_000.png
│   │   │   │   ├── Anim_14_Themes_001.png
│   │   │   │   ├── Anim_14_Themes_002.png
│   │   │   │   ├── Anim_14_Themes_003.png
│   │   │   │   ├── Anim_14_Themes_004.png
│   │   │   │   ├── Anim_14_Themes_005.png
│   │   │   │   ├── Anim_14_Themes_006.png
│   │   │   │   ├── Anim_14_Themes_007.png
│   │   │   │   ├── Anim_14_Themes_008.png
│   │   │   │   ├── Anim_14_Themes_009.png
│   │   │   │   ├── Anim_14_Themes_010.png
│   │   │   │   ├── Anim_14_Themes_011.png
│   │   │   │   ├── Anim_14_Themes_012.png
│   │   │   │   ├── Anim_14_Themes_013.png
│   │   │   │   └── Anim_14_Themes_064.png
│   │   │   ├── Anim_15_SysVars
│   │   │   │   ├── Anim_15_SysVars_000.png
│   │   │   │   ├── Anim_15_SysVars_001.png
│   │   │   │   ├── Anim_15_SysVars_002.png
│   │   │   │   ├── Anim_15_SysVars_003.png
│   │   │   │   ├── Anim_15_SysVars_004.png
│   │   │   │   ├── Anim_15_SysVars_005.png
│   │   │   │   ├── Anim_15_SysVars_006.png
│   │   │   │   ├── Anim_15_SysVars_007.png
│   │   │   │   ├── Anim_15_SysVars_008.png
│   │   │   │   ├── Anim_15_SysVars_009.png
│   │   │   │   ├── Anim_15_SysVars_010.png
│   │   │   │   ├── Anim_15_SysVars_011.png
│   │   │   │   ├── Anim_15_SysVars_012.png
│   │   │   │   ├── Anim_15_SysVars_013.png
│   │   │   │   └── Anim_15_SysVars_064.png
│   │   │   ├── Anim_1_Logo
│   │   │   │   ├── Anim_1_Logo_000.png
│   │   │   │   ├── Anim_1_Logo_001.png
│   │   │   │   ├── Anim_1_Logo_002.png
│   │   │   │   ├── Anim_1_Logo_003.png
│   │   │   │   ├── Anim_1_Logo_004.png
│   │   │   │   ├── Anim_1_Logo_005.png
│   │   │   │   ├── Anim_1_Logo_006.png
│   │   │   │   ├── Anim_1_Logo_007.png
│   │   │   │   ├── Anim_1_Logo_008.png
│   │   │   │   ├── Anim_1_Logo_009.png
│   │   │   │   ├── Anim_1_Logo_010.png
│   │   │   │   ├── Anim_1_Logo_011.png
│   │   │   │   ├── Anim_1_Logo_012.png
│   │   │   │   ├── Anim_1_Logo_013.png
│   │   │   │   ├── Anim_1_Logo_014.png
│   │   │   │   ├── Anim_1_Logo_015.png
│   │   │   │   ├── Anim_1_Logo_016.png
│   │   │   │   ├── Anim_1_Logo_017.png
│   │   │   │   ├── Anim_1_Logo_018.png
│   │   │   │   ├── Anim_1_Logo_019.png
│   │   │   │   ├── Anim_1_Logo_020.png
│   │   │   │   ├── Anim_1_Logo_021.png
│   │   │   │   ├── Anim_1_Logo_022.png
│   │   │   │   ├── Anim_1_Logo_023.png
│   │   │   │   ├── Anim_1_Logo_024.png
│   │   │   │   ├── Anim_1_Logo_025.png
│   │   │   │   ├── Anim_1_Logo_026.png
│   │   │   │   ├── Anim_1_Logo_027.png
│   │   │   │   ├── Anim_1_Logo_028.png
│   │   │   │   ├── Anim_1_Logo_029.png
│   │   │   │   ├── Anim_1_Logo_030.png
│   │   │   │   ├── Anim_1_Logo_031.png
│   │   │   │   ├── Anim_1_Logo_032.png
│   │   │   │   ├── Anim_1_Logo_033.png
│   │   │   │   ├── Anim_1_Logo_034.png
│   │   │   │   ├── Anim_1_Logo_035.png
│   │   │   │   ├── Anim_1_Logo_036.png
│   │   │   │   ├── Anim_1_Logo_037.png
│   │   │   │   ├── Anim_1_Logo_038.png
│   │   │   │   ├── Anim_1_Logo_039.png
│   │   │   │   ├── Anim_1_Logo_040.png
│   │   │   │   ├── Anim_1_Logo_041.png
│   │   │   │   ├── Anim_1_Logo_042.png
│   │   │   │   ├── Anim_1_Logo_043.png
│   │   │   │   ├── Anim_1_Logo_044.png
│   │   │   │   ├── Anim_1_Logo_045.png
│   │   │   │   ├── Anim_1_Logo_046.png
│   │   │   │   ├── Anim_1_Logo_047.png
│   │   │   │   └── Anim_1_Logo_048.png
│   │   │   ├── Anim_2_About
│   │   │   │   ├── Anim_2_About_000.png
│   │   │   │   ├── Anim_2_About_001.png
│   │   │   │   ├── Anim_2_About_002.png
│   │   │   │   ├── Anim_2_About_003.png
│   │   │   │   ├── Anim_2_About_004.png
│   │   │   │   ├── Anim_2_About_005.png
│   │   │   │   ├── Anim_2_About_006.png
│   │   │   │   ├── Anim_2_About_007.png
│   │   │   │   ├── Anim_2_About_008.png
│   │   │   │   ├── Anim_2_About_009.png
│   │   │   │   ├── Anim_2_About_010.png
│   │   │   │   ├── Anim_2_About_011.png
│   │   │   │   ├── Anim_2_About_012.png
│   │   │   │   ├── Anim_2_About_013.png
│   │   │   │   └── Anim_2_About_064.png
│   │   │   ├── Anim_3_Help
│   │   │   │   ├── Anim_3_Help_000.png
│   │   │   │   ├── Anim_3_Help_001.png
│   │   │   │   ├── Anim_3_Help_002.png
│   │   │   │   ├── Anim_3_Help_003.png
│   │   │   │   ├── Anim_3_Help_004.png
│   │   │   │   ├── Anim_3_Help_005.png
│   │   │   │   ├── Anim_3_Help_006.png
│   │   │   │   ├── Anim_3_Help_007.png
│   │   │   │   ├── Anim_3_Help_008.png
│   │   │   │   ├── Anim_3_Help_009.png
│   │   │   │   ├── Anim_3_Help_010.png
│   │   │   │   ├── Anim_3_Help_011.png
│   │   │   │   ├── Anim_3_Help_012.png
│   │   │   │   ├── Anim_3_Help_013.png
│   │   │   │   └── Anim_3_Help_064.png
│   │   │   ├── Anim_4_Options
│   │   │   │   ├── Anim_4_Options_000.png
│   │   │   │   ├── Anim_4_Options_001.png
│   │   │   │   ├── Anim_4_Options_002.png
│   │   │   │   ├── Anim_4_Options_003.png
│   │   │   │   ├── Anim_4_Options_004.png
│   │   │   │   ├── Anim_4_Options_005.png
│   │   │   │   ├── Anim_4_Options_006.png
│   │   │   │   ├── Anim_4_Options_007.png
│   │   │   │   ├── Anim_4_Options_008.png
│   │   │   │   ├── Anim_4_Options_009.png
│   │   │   │   ├── Anim_4_Options_010.png
│   │   │   │   ├── Anim_4_Options_011.png
│   │   │   │   ├── Anim_4_Options_012.png
│   │   │   │   ├── Anim_4_Options_013.png
│   │   │   │   └── Anim_4_Options_064.png
│   │   │   ├── Anim_5_Graphics
│   │   │   │   ├── Anim_5_Graphics_000.png
│   │   │   │   ├── Anim_5_Graphics_001.png
│   │   │   │   ├── Anim_5_Graphics_002.png
│   │   │   │   ├── Anim_5_Graphics_003.png
│   │   │   │   ├── Anim_5_Graphics_004.png
│   │   │   │   ├── Anim_5_Graphics_005.png
│   │   │   │   ├── Anim_5_Graphics_006.png
│   │   │   │   ├── Anim_5_Graphics_007.png
│   │   │   │   ├── Anim_5_Graphics_008.png
│   │   │   │   ├── Anim_5_Graphics_009.png
│   │   │   │   ├── Anim_5_Graphics_010.png
│   │   │   │   ├── Anim_5_Graphics_011.png
│   │   │   │   ├── Anim_5_Graphics_012.png
│   │   │   │   ├── Anim_5_Graphics_013.png
│   │   │   │   └── Anim_5_Graphics_064.png
│   │   │   ├── Anim_6_CPU
│   │   │   │   ├── Anim_6_CPU_000.png
│   │   │   │   ├── Anim_6_CPU_001.png
│   │   │   │   ├── Anim_6_CPU_002.png
│   │   │   │   ├── Anim_6_CPU_003.png
│   │   │   │   ├── Anim_6_CPU_004.png
│   │   │   │   ├── Anim_6_CPU_005.png
│   │   │   │   ├── Anim_6_CPU_006.png
│   │   │   │   ├── Anim_6_CPU_007.png
│   │   │   │   ├── Anim_6_CPU_008.png
│   │   │   │   ├── Anim_6_CPU_009.png
│   │   │   │   ├── Anim_6_CPU_010.png
│   │   │   │   ├── Anim_6_CPU_011.png
│   │   │   │   ├── Anim_6_CPU_012.png
│   │   │   │   ├── Anim_6_CPU_013.png
│   │   │   │   └── Anim_6_CPU_064.png
│   │   │   ├── Anim_7_Binaries
│   │   │   │   ├── Anim_7_Binaries_000.png
│   │   │   │   ├── Anim_7_Binaries_001.png
│   │   │   │   ├── Anim_7_Binaries_002.png
│   │   │   │   ├── Anim_7_Binaries_003.png
│   │   │   │   ├── Anim_7_Binaries_004.png
│   │   │   │   ├── Anim_7_Binaries_005.png
│   │   │   │   ├── Anim_7_Binaries_006.png
│   │   │   │   ├── Anim_7_Binaries_007.png
│   │   │   │   ├── Anim_7_Binaries_008.png
│   │   │   │   ├── Anim_7_Binaries_009.png
│   │   │   │   ├── Anim_7_Binaries_010.png
│   │   │   │   ├── Anim_7_Binaries_011.png
│   │   │   │   ├── Anim_7_Binaries_012.png
│   │   │   │   ├── Anim_7_Binaries_013.png
│   │   │   │   └── Anim_7_Binaries_064.png
│   │   │   ├── Anim_8_DSDT
│   │   │   │   ├── Anim_8_DSDT_000.png
│   │   │   │   ├── Anim_8_DSDT_001.png
│   │   │   │   ├── Anim_8_DSDT_002.png
│   │   │   │   ├── Anim_8_DSDT_003.png
│   │   │   │   ├── Anim_8_DSDT_004.png
│   │   │   │   ├── Anim_8_DSDT_005.png
│   │   │   │   ├── Anim_8_DSDT_006.png
│   │   │   │   ├── Anim_8_DSDT_007.png
│   │   │   │   ├── Anim_8_DSDT_008.png
│   │   │   │   ├── Anim_8_DSDT_009.png
│   │   │   │   ├── Anim_8_DSDT_010.png
│   │   │   │   ├── Anim_8_DSDT_011.png
│   │   │   │   ├── Anim_8_DSDT_012.png
│   │   │   │   ├── Anim_8_DSDT_013.png
│   │   │   │   └── Anim_8_DSDT_064.png
│   │   │   ├── Anim_9_Boot_Sequence
│   │   │   │   ├── Anim_9_Boot_Sequence_000.png
│   │   │   │   ├── Anim_9_Boot_Sequence_001.png
│   │   │   │   ├── Anim_9_Boot_Sequence_002.png
│   │   │   │   ├── Anim_9_Boot_Sequence_003.png
│   │   │   │   ├── Anim_9_Boot_Sequence_004.png
│   │   │   │   ├── Anim_9_Boot_Sequence_005.png
│   │   │   │   ├── Anim_9_Boot_Sequence_006.png
│   │   │   │   ├── Anim_9_Boot_Sequence_007.png
│   │   │   │   ├── Anim_9_Boot_Sequence_008.png
│   │   │   │   ├── Anim_9_Boot_Sequence_009.png
│   │   │   │   ├── Anim_9_Boot_Sequence_010.png
│   │   │   │   ├── Anim_9_Boot_Sequence_011.png
│   │   │   │   ├── Anim_9_Boot_Sequence_012.png
│   │   │   │   ├── Anim_9_Boot_Sequence_013.png
│   │   │   │   └── Anim_9_Boot_Sequence_064.png
│   │   │   ├── GoB_PTMono_10W_Bevel3.png
│   │   │   ├── Notes.txt
│   │   │   ├── Selection_big.png
│   │   │   ├── Selection_small.png
│   │   │   ├── alternative_icons
│   │   │   │   ├── Selection_big.png
│   │   │   │   ├── os_debian.icns
│   │   │   │   ├── os_hsierra.icns
│   │   │   │   ├── os_kali.icns
│   │   │   │   ├── os_knoppix.icns
│   │   │   │   ├── os_manjaro.icns
│   │   │   │   ├── os_puppy.icns
│   │   │   │   ├── os_sierra.icns
│   │   │   │   ├── os_winVista.icns
│   │   │   │   ├── os_winXP.icns
│   │   │   │   ├── vol_clover_hdd.icns
│   │   │   │   └── vol_internal_hdd.icns
│   │   │   ├── background.png
│   │   │   ├── checkbox.png
│   │   │   ├── checkbox_checked.png
│   │   │   ├── icons
│   │   │   │   ├── cd.icns
│   │   │   │   ├── func_about.png
│   │   │   │   ├── func_clover.png
│   │   │   │   ├── func_help.png
│   │   │   │   ├── func_options.png
│   │   │   │   ├── func_reset.png
│   │   │   │   ├── func_secureboot.png
│   │   │   │   ├── func_secureboot_config.png
│   │   │   │   ├── func_shutdown.png
│   │   │   │   ├── logo.png
│   │   │   │   ├── os_arch.icns
│   │   │   │   ├── os_cap.icns
│   │   │   │   ├── os_cata.icns
│   │   │   │   ├── os_clover.icns
│   │   │   │   ├── os_cougar.icns
│   │   │   │   ├── os_fedora.icns
│   │   │   │   ├── os_freebsd.icns
│   │   │   │   ├── os_freedos.icns
│   │   │   │   ├── os_gentoo.icns
│   │   │   │   ├── os_grub.icns
│   │   │   │   ├── os_hsierra.icns
│   │   │   │   ├── os_kubuntu.icns
│   │   │   │   ├── os_legacy.icns
│   │   │   │   ├── os_leo.icns
│   │   │   │   ├── os_linux.icns
│   │   │   │   ├── os_lion.icns
│   │   │   │   ├── os_mac.icns
│   │   │   │   ├── os_mav.icns
│   │   │   │   ├── os_mint.icns
│   │   │   │   ├── os_moja.icns
│   │   │   │   ├── os_netbsd.icns
│   │   │   │   ├── os_openbsd.icns
│   │   │   │   ├── os_redhat.icns
│   │   │   │   ├── os_sierra.icns
│   │   │   │   ├── os_snow.icns
│   │   │   │   ├── os_suse.icns
│   │   │   │   ├── os_tiger.icns
│   │   │   │   ├── os_ubuntu.icns
│   │   │   │   ├── os_unknown.icns
│   │   │   │   ├── os_vista.icns
│   │   │   │   ├── os_win.icns
│   │   │   │   ├── os_yos.icns
│   │   │   │   ├── pointer.icns
│   │   │   │   ├── pointer.png
│   │   │   │   ├── tool_shell.png
│   │   │   │   ├── vol_clover.icns
│   │   │   │   ├── vol_external.icns
│   │   │   │   ├── vol_firewire.icns
│   │   │   │   ├── vol_internal.icns
│   │   │   │   ├── vol_internal_apfs.icns
│   │   │   │   ├── vol_internal_ext3.icns
│   │   │   │   ├── vol_internal_hfs.icns
│   │   │   │   ├── vol_internal_ntfs.icns
│   │   │   │   ├── vol_optical.icns
│   │   │   │   └── vol_recovery.icns
│   │   │   ├── logo_trans.png
│   │   │   ├── radio_button.png
│   │   │   ├── radio_button_selected.png
│   │   │   ├── screenshot.png
│   │   │   ├── scrollbar
│   │   │   │   ├── bar_end.png
│   │   │   │   ├── bar_fill.png
│   │   │   │   ├── bar_start.png
│   │   │   │   ├── down_button.png
│   │   │   │   ├── scroll_end.png
│   │   │   │   ├── scroll_fill.png
│   │   │   │   ├── scroll_start.png
│   │   │   │   └── up_button.png
│   │   │   ├── selection_indicator.png
│   │   │   └── theme.plist
│   │   ├── christmas
│   │   │   ├── Anim_1_Logo
│   │   │   │   ├── Anim_1_Logo_000.png
│   │   │   │   ├── Anim_1_Logo_001.png
│   │   │   │   ├── Anim_1_Logo_002.png
│   │   │   │   ├── Anim_1_Logo_003.png
│   │   │   │   ├── Anim_1_Logo_004.png
│   │   │   │   ├── Anim_1_Logo_005.png
│   │   │   │   ├── Anim_1_Logo_006.png
│   │   │   │   ├── Anim_1_Logo_007.png
│   │   │   │   ├── Anim_1_Logo_008.png
│   │   │   │   ├── Anim_1_Logo_009.png
│   │   │   │   ├── Anim_1_Logo_010.png
│   │   │   │   ├── Anim_1_Logo_011.png
│   │   │   │   ├── Anim_1_Logo_012.png
│   │   │   │   ├── Anim_1_Logo_013.png
│   │   │   │   ├── Anim_1_Logo_014.png
│   │   │   │   ├── Anim_1_Logo_015.png
│   │   │   │   ├── Anim_1_Logo_016.png
│   │   │   │   ├── Anim_1_Logo_017.png
│   │   │   │   ├── Anim_1_Logo_018.png
│   │   │   │   ├── Anim_1_Logo_019.png
│   │   │   │   ├── Anim_1_Logo_020.png
│   │   │   │   ├── Anim_1_Logo_021.png
│   │   │   │   ├── Anim_1_Logo_022.png
│   │   │   │   ├── Anim_1_Logo_023.png
│   │   │   │   ├── Anim_1_Logo_024.png
│   │   │   │   └── Anim_1_Logo_025.png
│   │   │   ├── Selection_big.png
│   │   │   ├── Selection_small.png
│   │   │   ├── WoR_NovaMono_9W_A.png
│   │   │   ├── background.png
│   │   │   ├── icons
│   │   │   │   ├── func_about.png
│   │   │   │   ├── func_clover.png
│   │   │   │   ├── func_options.png
│   │   │   │   ├── func_reset.png
│   │   │   │   ├── func_secureboot.png
│   │   │   │   ├── func_secureboot_config.png
│   │   │   │   ├── func_shutdown.png
│   │   │   │   ├── os_cap.icns
│   │   │   │   ├── os_clover.icns
│   │   │   │   ├── os_cougar.icns
│   │   │   │   ├── os_hsierra.icns
│   │   │   │   ├── os_linux.icns
│   │   │   │   ├── os_lion.icns
│   │   │   │   ├── os_mav.icns
│   │   │   │   ├── os_sierra.icns
│   │   │   │   ├── os_snow.icns
│   │   │   │   ├── os_ubuntu.icns
│   │   │   │   ├── os_vista.icns
│   │   │   │   ├── os_win.icns
│   │   │   │   ├── os_yos.icns
│   │   │   │   ├── pointer.png
│   │   │   │   ├── tool_shell.png
│   │   │   │   ├── vol_clover.icns
│   │   │   │   ├── vol_external.icns
│   │   │   │   ├── vol_internal.icns
│   │   │   │   ├── vol_internal_ext3.icns
│   │   │   │   ├── vol_internal_hfs.icns
│   │   │   │   ├── vol_internal_ntfs.icns
│   │   │   │   ├── vol_optical.icns
│   │   │   │   └── vol_recovery.icns
│   │   │   ├── logo.png
│   │   │   ├── screenshot.png
│   │   │   └── theme.plist
│   │   ├── embedded
│   │   │   ├── screenshot.png
│   │   │   └── theme.plist
│   │   ├── logo_main.png
│   │   ├── metal
│   │   │   ├── Baskerville_20pt_Cell_26x27_l0.png
│   │   │   ├── BoG_DejaVuSans_9W.png
│   │   │   ├── BoG_LucidaConsole_10W_NA.png
│   │   │   ├── Cambria_20pt_Cell_22x25_l-2_ra.png
│   │   │   ├── Candara_24pt_Cell_23x29_noAA.png
│   │   │   ├── FontKorean.png
│   │   │   ├── MetalBack.png
│   │   │   ├── MetalDragon.png
│   │   │   ├── Select_trans_big.png
│   │   │   ├── Select_trans_small.png
│   │   │   ├── Selection_big.png
│   │   │   ├── Selection_small.png
│   │   │   ├── arrow-144.png
│   │   │   ├── arrow-64.png
│   │   │   ├── checkbox.png
│   │   │   ├── checkbox_checked.png
│   │   │   ├── dark-wide.png
│   │   │   ├── icons
│   │   │   │   ├── apple.png
│   │   │   │   ├── arrow.png
│   │   │   │   ├── boot_linux.icns
│   │   │   │   ├── boot_win.icns
│   │   │   │   ├── frame.png
│   │   │   │   ├── func_about.png
│   │   │   │   ├── func_clover.png
│   │   │   │   ├── func_help.png
│   │   │   │   ├── func_options.png
│   │   │   │   ├── func_reset.png
│   │   │   │   ├── func_secureboot.png
│   │   │   │   ├── func_secureboot_config.png
│   │   │   │   ├── func_shutdown.png
│   │   │   │   ├── os_cap.icns
│   │   │   │   ├── os_clover.icns
│   │   │   │   ├── os_cougar.icns
│   │   │   │   ├── os_ecomstation.icns
│   │   │   │   ├── os_freebsd.icns
│   │   │   │   ├── os_freedos.icns
│   │   │   │   ├── os_hsierra.icns
│   │   │   │   ├── os_legacy.icns
│   │   │   │   ├── os_leo.icns
│   │   │   │   ├── os_linux.icns
│   │   │   │   ├── os_lion.icns
│   │   │   │   ├── os_mac.icns
│   │   │   │   ├── os_mav.icns
│   │   │   │   ├── os_moja.icns
│   │   │   │   ├── os_netbsd.icns
│   │   │   │   ├── os_openbsd.icns
│   │   │   │   ├── os_sierra.icns
│   │   │   │   ├── os_snow.icns
│   │   │   │   ├── os_tiger.icns
│   │   │   │   ├── os_unknown.icns
│   │   │   │   ├── os_vista.icns
│   │   │   │   ├── os_win.icns
│   │   │   │   ├── os_yos.icns
│   │   │   │   ├── pointer-black.png
│   │   │   │   ├── pointer.png
│   │   │   │   ├── tool_shell.png
│   │   │   │   ├── vol_clover.icns
│   │   │   │   ├── vol_external.icns
│   │   │   │   ├── vol_firewire.icns
│   │   │   │   ├── vol_internal.icns
│   │   │   │   ├── vol_internal_hfs.icns
│   │   │   │   ├── vol_optical.icns
│   │   │   │   └── vol_recovery.icns
│   │   │   ├── logo-trans.png
│   │   │   ├── logo_3D
│   │   │   │   ├── logo_3D_000.png
│   │   │   │   ├── logo_3D_001.png
│   │   │   │   ├── logo_3D_002.png
│   │   │   │   ├── logo_3D_003.png
│   │   │   │   ├── logo_3D_004.png
│   │   │   │   ├── logo_3D_005.png
│   │   │   │   ├── logo_3D_006.png
│   │   │   │   ├── logo_3D_007.png
│   │   │   │   ├── logo_3D_008.png
│   │   │   │   ├── logo_3D_009.png
│   │   │   │   ├── logo_3D_010.png
│   │   │   │   ├── logo_3D_011.png
│   │   │   │   ├── logo_3D_012.png
│   │   │   │   ├── logo_3D_013.png
│   │   │   │   └── logo_3D_014.png
│   │   │   ├── logo_metal4.png
│   │   │   ├── radio_button.png
│   │   │   ├── radio_button_selected.png
│   │   │   ├── screenshot.png
│   │   │   ├── scrollbar
│   │   │   │   ├── bar_end.png
│   │   │   │   ├── bar_fill.png
│   │   │   │   ├── bar_start.png
│   │   │   │   ├── down_button.png
│   │   │   │   ├── scroll_end.png
│   │   │   │   ├── scroll_fill.png
│   │   │   │   ├── scroll_start.png
│   │   │   │   └── up_button.png
│   │   │   └── theme.plist
│   │   ├── newyear
│   │   │   ├── arrow-144.png
│   │   │   ├── arrow-64.png
│   │   │   ├── dark-wide.png
│   │   │   ├── elka_1
│   │   │   │   ├── elka_1_000.png
│   │   │   │   ├── elka_1_001.png
│   │   │   │   ├── elka_1_002.png
│   │   │   │   ├── elka_1_003.png
│   │   │   │   ├── elka_1_004.png
│   │   │   │   ├── elka_1_005.png
│   │   │   │   ├── elka_1_006.png
│   │   │   │   ├── elka_1_007.png
│   │   │   │   ├── elka_1_008.png
│   │   │   │   ├── elka_1_009.png
│   │   │   │   ├── elka_1_010.png
│   │   │   │   ├── elka_1_011.png
│   │   │   │   ├── elka_1_012.png
│   │   │   │   ├── elka_1_013.png
│   │   │   │   ├── elka_1_014.png
│   │   │   │   ├── elka_1_015.png
│   │   │   │   ├── elka_1_016.png
│   │   │   │   ├── elka_1_017.png
│   │   │   │   ├── elka_1_018.png
│   │   │   │   ├── elka_1_019.png
│   │   │   │   ├── elka_1_020.png
│   │   │   │   ├── elka_1_021.png
│   │   │   │   ├── elka_1_022.png
│   │   │   │   ├── elka_1_023.png
│   │   │   │   ├── elka_1_024.png
│   │   │   │   ├── elka_1_025.png
│   │   │   │   └── elka_1_026.png
│   │   │   ├── happy.png
│   │   │   ├── icons
│   │   │   │   ├── func_about.png
│   │   │   │   ├── func_clover.png
│   │   │   │   ├── func_help.png
│   │   │   │   ├── func_options.png
│   │   │   │   ├── func_reset.png
│   │   │   │   ├── func_shutdown.png
│   │   │   │   ├── os_cap.icns
│   │   │   │   ├── os_clover.icns
│   │   │   │   ├── os_cougar.icns
│   │   │   │   ├── os_freebsd.icns
│   │   │   │   ├── os_freedos.icns
│   │   │   │   ├── os_hsierra.icns
│   │   │   │   ├── os_legacy.icns
│   │   │   │   ├── os_leo.icns
│   │   │   │   ├── os_linux.icns
│   │   │   │   ├── os_lion.icns
│   │   │   │   ├── os_mac.icns
│   │   │   │   ├── os_mav.icns
│   │   │   │   ├── os_sierra.icns
│   │   │   │   ├── os_snow.icns
│   │   │   │   ├── os_tiger.icns
│   │   │   │   ├── os_vista.icns
│   │   │   │   ├── pointer.png
│   │   │   │   ├── tool_shell.png
│   │   │   │   ├── vol_clover.icns
│   │   │   │   ├── vol_external.icns
│   │   │   │   ├── vol_firewire.icns
│   │   │   │   ├── vol_internal.icns
│   │   │   │   ├── vol_internal_hfs.icns
│   │   │   │   ├── vol_optical.icns
│   │   │   │   └── vol_recovery.icns
│   │   │   ├── screenshot.png
│   │   │   ├── scrollbar
│   │   │   │   ├── bar_end.png
│   │   │   │   ├── bar_fill.png
│   │   │   │   ├── bar_start.png
│   │   │   │   ├── down_button.png
│   │   │   │   ├── scroll_end.png
│   │   │   │   ├── scroll_fill.png
│   │   │   │   ├── scroll_start.png
│   │   │   │   └── up_button.png
│   │   │   ├── snow.png
│   │   │   └── theme.plist
│   │   ├── pointer-metal.png
│   │   └── random
│   │       └── theme.plist
│   └── tools
│       ├── Shell32.efi
│       ├── Shell64.efi
│       ├── Shell64U.efi
│       └── bdmesg.efi
├── Clover_Install_Log.txt
└── 硬件+分区信息备份.7z

98 directories, 658 files
```