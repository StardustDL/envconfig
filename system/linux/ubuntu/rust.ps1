Write-Output "Install rustup"

/bin/curl https://sh.rustup.rs -sSf | sh

rustup --version
rustc --version
cargo --version