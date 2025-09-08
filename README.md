![preview of the setup](https://github.com/gearedsnake/dots2/blob/main/preview.png)

# WARNING
2BWM IS FOR ADVANCED USERS ONLY, YOU WILL ENCOUNTER ISSUES THAT ARE NOT LISTED HERE

## full install
```
yay -S alacritty dunst xcb-util-keysyms xcb-util-wm xcb-util-xrm xcb-util git rofi fontconfig freetype2 glibc hicolor-icon-theme imlib2 libexif libx11 libxft lf dragon-drop ctpv-git btop tint2 rifle vim ttf-0xproto-nerd maim pulsemixer
```

## 2bwm
```
yay -S xcb-util-keysyms xcb-util-wm xcb-util-xrm xcb-util
```
inside dots2/src/2bwm
```
sudo make clean install
```

2bwm is a stacking 2 border window manager that supports both keyboard and mouse

make sure to swap out USERNAME value with your username

known issues:  
firefox showing reduced security warning  
fix: `yay -S apparmor`

this is not clean 2bwm, i fixed some stuff like panel being always on top etc, if you are interested in changes i made run `diff original/2bwm.c src/2bwm.c`

## scripts
```
yay -S dunst maim pulsemixer
```
copy dots2/scripts to ~/scripts

make sure they are executable

## lf
```
yay -S lf dragon-drop ctpv-git rifle
```
copy dots2/etc/profile.d/stuff.sh to /etc/profile.d/stuff.sh or declare variables from there to your preferred environment, you can also change the values of app variables

my lfrc features dragon-drop integration and image preview using ctpv, in case you do not want any of these features, find them in lfrc and delete them

for colors to work put dots2/.dircolors into your home directory

for trash bin to work declare tsh from .bashrc and create .trash directory

## alacritty
```
yay -S alacritty ttf-0xproto-nerd
```
copy dots2/.config/alacritty/alacritty.toml to ~/.config/alacritty/alacritty.toml

make sure you have 0xProto Nerd installed or swap out the font

## pfetch
inside dots2/src/pfetch
```
sudo make clean install
```
make sure PF_COL variables from .bashrc are declared for color to work

## nsxiv
```
yay -S fontconfig freetype2 glibc hicolor-icon-theme imlib2 libexif libx11 libxft
```
inside dots2/src/nsxiv
```
sudo make clean install
```

## tint2
```
yay -S tint2 ttf-0xproto-nerd
```
copy dots2/.config/tint2/tint2rc to ~/.config/tint2/tint2rc

make sure you have 0xProto Nerd installed or swap out the font

## dunst
```
yay -S dunst ttf-0xproto-nerd
```
copy dots2/.config/dunst/dunstrc to ~/.config/dunst/dunstrc

make sure you have 0xProto Nerd installed or swap out the font

## btop
```
yay -S btop
```
copy dots2/.config/btop/btop.conf to ~/.config/btop/btop.conf

## rofi
```
yay -S rofi ttf-0xproto-nerd
```
copy dots2/.config/rofi/config.rasi to ~/.config/rofi/config.rasi

make sure you have 0xProto Nerd installed or swap out the font

## firefox
https://addons.mozilla.org/en-US/firefox/addon/nomadtheme/  
https://github.com/leadweedy/Firefox-Proton-Square  
https://github.com/gearedsnake/dots2/blob/main/browser.png
