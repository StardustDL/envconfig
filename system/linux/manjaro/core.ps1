Write-Output "Set pacman mirrors"

pacman-mirrors -c China

Write-Output "Update pacman sources"

pacman -Syyu

pacman -S yay --noconfirm

Write-Output "Install core applications"

pacman -S google-chrome --noconfirm
pacman -S vim --noconfirm
pacman -S gdb --noconfirm
yay -S visual-studio-code-bin --noconfirm

Write-Output "Install fcitx"

pacman -S fcitx-im --noconfirm   # Install all
pacman -S fcitx-configtool --noconfirm
pacman -S fcitx-sogoupinyin --noconfirm

$xprofile = @"
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
"@

$xprofile | Out-File -FilePath ~/.xprofile

Write-Output "Install oh-my-zsh"

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O)"

Write-Output "Install Powerline fonts"

pacman -S powerline --noconfirm
pacman -S powerline-fonts --noconfirm

git clone https://github.com/abertsch/Menlo-for-Powerline.git
Set-Location Menlo-for-Powerline
sudo cp *.ttf /usr/share/fonts/TTF/
sudo fc-cache -f -v

# if raise pcie error and journald cost too many cpu:
# vim /etc/default/grub
# GRUB_CMDLINE_LINUX_DEFAULT="quiet pci=nomsi" # append
# update-grub
# reboot