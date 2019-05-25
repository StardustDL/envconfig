Write-Output "Install Docker"

pacman -S docker --noconfirm
systemctl start docker
systemctl enable docker

Write-Output "Register docker user"
usermod -aG docker $env:USER
service docker start