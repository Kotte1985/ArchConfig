#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _    
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__ 
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__| 
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "FINAL SETUP AND CONFIGURATION"


confTerminal1 () {
    echo
    echo "=========="
    echo "KONSOLE"
    echo "=========="

    ## config for kde plasma
    echo "configs"
    # Kde CONFIGURATION
    git clone https://gitlab.com/Kotte1985/configbackup.git
    sudo cp -r /home/kotte/Configbackup ~/kotte/ArchConfig
    tar -xvf configs-backup.tgz -C ~/
}

confTerminal2 () {
    ## p10k-zsh
    echo ".p10k.zsh"
    sudo cp -r /home/kotte/.config/dotfiles/User/.p10k.zsh ~/.p10k.zsh

    ## Zshrc
    echo "ZSHRC"
    sudo cp -r /home/kotte/zsh/.zshrc ~/.zshrc

    ## icons
    echo "icons"
    sudo cp -r /home/kotte/.config/dotfiles/icons /home/kotte/.local/share

    ## color-schemes
    echo "color-schemes"
    sudo cp -r /home/kotte/.config/dotfiles/the-glorious-plasma-setup-master/local/share/color-schemes /home/kotte/.local/share

    ## konsole Profile setting
    echo "konsole Profile setting"
    sudo cp -r /home/kotte/.config/dotfiles/konsole /home/kotte/.local/share

    ## konsole Profile setting
    echo "kate Profile setting"
    sudo cp -r /home/kotte/.config/dotfiles/kate /home/kotte/.local/share

    ## konsole Profile setting
    echo "kxmlgui5 Profile setting"
    sudo cp -r /home/kotte/.config/dotfiles/kxmlgui5 /home/kotte/.local/share
    
    ## dolphine setting
    echo "dolphine setting"
    sudo cp -r /home/kotte/.config/dotfiles/user-places.xbel /home/kotte/.local/share
    
    # ZSH
    echo "ZSH"
    chsh -s $(which zsh)
    
}

confTerminal1
confTerminal2


echo "Done!"
echo
echo "Reboot now..."
echo


