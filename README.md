# Installation

``` bash
sudo apt purge picom
sudo apt install git vim emacs net-tools pavucontrol gcc gdb alacritty i3 feh mpv flameshot network-manager network-manager-applet budgie-network-manager-applet ranger cmus libreoffice kdenlive obs-studio
sudo apt install libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libepoxy-dev libpcre2-dev libpixman-1-dev libx11-xcb-dev libxcb1-dev libxcb-composite0-dev libxcb-damage0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-xfixes0-dev meson ninja-build uthash-dev
cd /tmp
git clone https://github.com/yshui/picom
cd picom
meson setup --buildtype=release build
ninja -C build
ninja -C build install
cd ~/
git clone https://github.com/mxmchrbrt/dotfiles
mkdir -p ~/.config/alacritty
mkdir -p ~/.emacs.d
mkdir -p ~/.config/i3
mkdir -p ~/.config/picom
touch ~/.config/picom/picom.conf
cp -rf ~/.config/i3/config ~/.config/i3/config.bak
cp -rf ~/.vimrc ~/.vimrc.bak
cp -rf ~/.emacs.d/init.el ~/.emacs.d/init.el.bak
cp -rf ~/.config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml/bak
rm -rf ~/.config/alacritty/alacritty.toml
rm -rf ~/.emacs.d/init.el
rm -rf ~/.config/i3/config
rm -rf ~/.vimrc
ln -s ~/dotfiles/.config/i3/config ~/.config/i3/config
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.config/emacs/init.el ~/.emacs.d/init.el
ln -s ~/dotfiles/.config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -s ~/dotfiles/.config/picom/picom.conf ~/.config/picom/picom.conf
```
On laptop only:

``` bash
sudo apt install tlp
```
