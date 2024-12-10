#!/bin/bash

################################################################################
#                   Installation for Ubuntu                                    #
################################################################################
install_on_ubuntu() {
    sudo apt update
    sudo apt install -y xclip ripgrep
}

################################################################################
#                   Installation for fedora                                    #
################################################################################
install_on_fedora() {
    sudo dnf update
    sudo dnf install -y xclip ripgrep
}

################################################################################
#                   Installation for MacOS                                     #
################################################################################
install_on_macos() {
    bew update
    bew install -y xclip ripgrep
}
