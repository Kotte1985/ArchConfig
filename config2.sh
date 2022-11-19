#!/usr/bin/sudo bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "FINAL SETUP AND CONFIGURATION"


confTerminal () {
    echo
    echo "=========="
    echo "KONSOLE"
    echo "=========="

    ## Zsh
    echo "ZSH"
    sudo cp -r /home/kotte/.config/dotfiles/Root/.zshrc ~/.zshrc

    ## Powerlevel10
    echo "Powerlevel10"
    sudo cp -r /home/kotte/powerlevel10k ~/
    sudo cp -r /home/kotte/.config/dotfiles/Root/.p10k.zsh ~/.p10k.zsh

    ## wallpapers
    echo "wallpapers"
    sudo cp -r /home/kotte/.config/dotfiles/wall /usr/share/wallpapers/Next/contents

    ## Profile Picture
    echo "Profile Picture"
    sudo cp -r /home/kotte/.config/dotfiles/kotte /var/lib/AccountsService/icons/kotte

    ## config for fstab
    echo "fstab"
    sudo cp -r /home/kotte/.config/dotfiles/fstab /etc

    # ZSH
    echo "ZSH"
    chsh -s $(which zsh)

}


confTerminal


echo "Done!"
echo
echo "Reboot now..."
echo


