`ASUS Z270-DRAGON` `i7-7700k` `HD630 ` `ALC887` `Realtek RTL8168` `TL-WDN7200H`

[Realtek Ethernet](https://bitbucket.org/RehabMan/os-x-realtek-network)

[TL-WDN7200H](https://www.tp-link.com/us/support/download/archer-t9uh)

ALC887: [Lilu](https://github.com/vit9696/Lilu) + [AppleALC](https://github.com/acidanthera/AppleALC)

### HD630

- [Lilu](https://github.com/vit9696/Lilu) + [WhateverGreen](https://github.com/acidanthera/WhateverGreen)
- Download [Clover Configurator](https://mackie100projects.altervista.org/download-clover-configurator) here
- Mount your EFI Partition
- Open Finder and Go to `EFI\CLOVER` and Find `config.plist`
- Right click on config.plist and choose `Open With Clover Configurator`
- Go to `Devices` Tab
- Type `0x59128086` in the `IntelGFX` column
- Go to `Graphics` Tab
- Check at `inject Intel` and Type `0x59120000` in the `ig-platform-id` column
- Go to `SMBIOS` Tab
- Type `iMac18,1` in the `ProductName` column
- Save and Restart.