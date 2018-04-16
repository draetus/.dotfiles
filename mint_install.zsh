print "_______________________Updating System_______________________"
apt-get update
apt-get upgrade

print "_______________________Installing Git_______________________"
apt-get install git


print "_______________________Installing i3_______________________"
apt-get install i3 i3status rofi i3lock feh


print "____________________Installing Python(2-3)_____________________"
apt-get install python3 python python3-pip python-pip


print "_______________________Installing Zip Unzip_______________________"
apt-get install zip unzip


print "_______________________Installing Arandr_______________________"
pacman -S arandr


print "_______________________Installing Inconsolata - Font_______________________"
apt-get install fonts-inconsolata 


print "_______________________Installing Alsa-Mixer-Utils_______________________"
apt-get install alsa-utils


print "_______________________Installing Libreoffice_______________________"
apt-get install libreoffice


print "_______________________Installing Oh My Zsh_______________________"
apt-get install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


print "_______________________Installing Gnome Screenshot_______________________"
apt-get install gnome-screenshot


print "_______________________Installing SimpleScreenRecorder_______________________"
apt-get install simplescreenrecorder 


print "_________________________________________________________"
print "_______________________SETTING VIM_______________________"
print "_________________________________________________________"
apt-get install vim


print "_______________________Setting Base16-vim_______________________"
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell


print "_______________________Setting YouCompleteMe Compile Requirements_______________________"
apt-get install cmake


print "_______________________Setting Syntastic Checkers_______________________"
apt-get install gcc tidy flake8


print "_________________________________________________________"
print "_______________________FINISHED__________________________"
print "_________________________________________________________"


print "_______________________Realocating Config Files_______________________"
\rm -rf ~/.vim
\rm -rf ~/.config/i3
\rm -rf ~/.config/i3status
\cp -r ~/workstation/.dotfiles/.vim ~/
\cp -r ~/workstation/.dotfiles/.config/i3 ~/.config/
\cp -r ~/workstation/.dotfiles/.config/i3status ~/.config/
\cp ~/workstation/.dotfiles/.xinitrc ~/
\cp ~/workstation/.dotfiles/.zshrc ~/
\cp ~/workstation/.dotfiles/.Xresources ~/
\cp ~/workstation/.dotfiles/.config/flake8 ~/.config/
\cp ~/workstation/.dotfiles/.editorconfig ~/
\cp ~/workstation/.dotfiles/.gitconfig ~/


print "_______________________Configure your own monitor config_______________________"
arandr


print "_______________________Updating System_______________________"
apt-get update
apt-get upgrade
