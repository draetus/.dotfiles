My Dotfiles
===========



----------------------------
Programs to install with i3:
============================


  - i3 -> The main window manager package 
  
  - i3status -> Generate a string with information to be displayed in the i3bar

  - dmenu -> Launch our apps in the i3 desktop
  
  - i3lock -> Screen locker
 
  - xbacklight -> Set laptop's screen brightness
 
  - feh -> Set wallpapers
  
  - conky -> Display computer information



------------------------
Vim Plugin Requirements:
========================

>Do all of this before doing :PlugInstall

Base16-vim
----------
 - Setting terminal to 256 colors scheme
 
 - git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

 - In ~/.bashrc or ~/.zshrc place the following lines:
 
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

 - Start a new shell and then type base16(*tab completion*) and select what you want (*Base16-vim Plugin uses Monokai*)
 
 

Youcompleteme
-------------

 - Install development tools ad CMAKE:
 * build-essential
 * cmake
 ---------------------------------------
 - Install Python headers:
 * python-dev
 * python3-dev
