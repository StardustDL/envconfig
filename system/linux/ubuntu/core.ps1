Write-Output "Update APT"

apt update

Write-Output "Install build-essential"

apt -y install build-essential

Write-Output "Install Git"

apt -y install git

Write-Output "Install Zsh"

apt -y install zsh

Write-Output "Install Vim"

apt -y install vim

Write-Output "Install Curl & Wget"

apt -y install curl wget
