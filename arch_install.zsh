print "_______________________Installing Git_______________________"
pacman -S git


print "_______________________Installing i3_______________________"
pacman -S i3 i3status rofi i3lock feh


print "_______________________Installing Curl_______________________"                     
pacman -S curl                                                                            
                                                                                          
 
print "_______________________Installing Python_______________________"
pacman -S python3 python2 python-pip python2-pip


print "_______________________Installing Mackup_______________________"
pip2 install mackup
\rm ~/.mackup.cfg
\rm -rf ~/.mackup/
\cp ~/workstation/.dotfiles/.mackup.cfg ~/
\cp -r ~/workstation/.dotfiles/.mackup/ ~/


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


print "_______________________Installing Alsa-Mixer-Utils_______________________"
pacman -S alsa-utils


print "_______________________Installing Conky_______________________"
pacman -S conky


print "_______________________Installing Libreoffice_______________________"
pacman -S libreoffice


print "_______________________Installing Network Manager_______________________"
pacman -S networkmanager network-manager-applet
systemctl enable NetworkManager.service


print "_______________________Installing SDDM - Login Manager_______________________"     
pacman -S sddm                                                                            
systemctl enable sddm.service                                                             


print "_______________________Installing Curl_______________________"
pacman -S curl


print "_______________________Installing Libtinfo_______________________"
\cd ~/workstation/.dotfiles/libtinfo
makepkg -si
ln -sf /usr/lib/libtinfo.so.6 /usr/lib/libtinfo.so.5
\cd ~/


print "_______________________Installing Oh My Zsh_______________________"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


print "_______________________Installing Zeal_______________________"
pacman -S zeal


print "_______________________Installing Zeal_______________________"
pacman -S deepin-screenshot


print "_________________________________________________________"
print "_______________________SETTING VIM_______________________"
print "_________________________________________________________"
pacman -S vim

print "_______________________Setting Base16-vim_______________________"
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell


print "_______________________Setting YouCompleteMe Compile Requirements_______________________"
pacman -S cmake


print "_______________________Setting Syntastic Checkers_______________________"
pacman -S gcc tidy flake8

print "_________________________________________________________"
print "_______________________FINISHED__________________________"
print "_________________________________________________________"

print "_______________________Realocating Config Files_______________________"
mackup restore


print "_______________________Updating System_______________________"
pacman -Syu


print "_______________________configure your own monitor config_______________________"
arandr
