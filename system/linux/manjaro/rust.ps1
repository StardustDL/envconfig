Write-Output "Install Rustup"

yay -S rustup --noconfirm

Write-Output "Install Rust"

rustup toolchain install stable
rustup default stable
