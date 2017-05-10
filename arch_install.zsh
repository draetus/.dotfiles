print "_______________________Installing i3_______________________"
pacman -S i3 i3status rofi i3lock feh


print "_______________________Installing Git_______________________"
pacman -S git


print "_______________________Installing Mackup_______________________"
pip2 install mackup


print "_______________________Installing Zip Unzip_______________________"
pacman -S zip unzip


print "_______________________Installing Arandr_______________________"
pacman -S arandr


print "_______________________Installing Inconsolata - Font_______________________"
pacman -S ttf-inconsolata


print "_______________________Installing Xorg-server_______________________"
pacman -S xorg-server


print "_______________________Installing Nvidia drivers_______________________"
pacman -S nvidia


print "_______________________Installing Conky_______________________"
pacman -S conky


print "_______________________Installing Libreoffice_______________________"
pacman -S libreoffice


print "_______________________Installing Network Manager_______________________"
pacman -S networkmanager network-manager-applet
systemctl enable NetworkManager.service


print "_________________________________________________________"
print "_______________________SETTING VIM_______________________"
print "_________________________________________________________"

print "_______________________Setting Base16-vim_______________________"
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
echo '\n\n BASE16_SHELL=$HOME/.config/base16-shell/ \n [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"'
base16_monokai


print "_______________________Setting YouCompleteMe Compile Requirements_______________________"
pacman -S cmake


print "_______________________Setting Syntastic Checkers_______________________"
pacman -S gcc tidy flake8

print "_________________________________________________________"
print "_______________________FINISHED__________________________"
print "_________________________________________________________"


print "_______________________Updating System_______________________"
pacman -Syu
