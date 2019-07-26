1. go to `IO80211Familly.kext` > `contents` > `Plugins`
2. Copy `AirPortAtheros40.kext` to `System` > `Library` > `Extensions` > `IO80211Familly.kext` > `contents` > `Plugins`
3. fix and rebuild caches : `sudo chown -R root:wheel S*/L*/E*; sudo chmod -R 755 S*/L*/E*; sudo kextcache -i /`
4. Reboot and see if it works
