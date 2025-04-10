# Enabling LVDS in Toradex Easy Installer, Verdin Development Board V1.1F, Verdin iMX8M Plus Q 4GB, Verdin iMX8M Plus Mezzanine V1.0

## Working instructions - this is what should just work and this is what is in the Youtube videos
### Preparation: Take this repo as is, or if you want to switch configurations, and get to the same result you nay do:
```
mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n "Distro boot script PSCG" -d lvds-only.cmd boot.scr.lvds-only
# delete boot.scr if it exists and you are sure that you want to override it (not doing it for you automatically to not help you "sabotage" yourself)
ln -s boot.scr.lvds-only boot.scr
```

### Booting:
1. Get the device into recovery mode (e.g. reset (SW1) + holding the recovery key (SW3) for a couple of seconds  (ON/OFF, aka SW2 can also be used instead of reset on power on)
2. Run the respective ./recovery-<your-os> script, i.e. './recovery-linux.sh' for Linux
3. Enjoy


### Videos
- https://www.youtube.com/watch?v=AmrEA5NGTiw&list=PLBaH8x4hthVysdRTOlg2_8hL6CWCnN5l-&index=63
- https://www.youtube.com/watch?v=NkumKyMxlmU&list=PLBaH8x4hthVysdRTOlg2_8hL6CWCnN5l-&index=64

## Starting point (you can ignore this if you just want things to work - this is what didn't exactly work)

### Started of Tezi 7.2.0 which has no LVDS support at all
So a customization was required - which is the next step below

### Reference working image of Toradex Easy Installer (7.2.0) with working HDMI displays + device tree overlay + right video param - but it wouldn't work as you expect it to

Not working but won't address it now: LVDS screen . This was actually a misconception - it did work - but the display went to other places
```
imx8mp-ldb ldb-display-controller: Failed to create device link (0x180) with panel-lvds-mez
```

Working so be careful of it (with all seriousness)
Touch "screen" (you can touch, but you can't see...)



