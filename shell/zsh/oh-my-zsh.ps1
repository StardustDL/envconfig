Write-Output "Change shell to zsh"

chsh -s /bin/zsh

Write-Output "Install oh-my-zsh"

/bin/wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

Write-Output "Install plugin zsh-syntax-highlighting"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

Write-Output "Install plugin zsh-autosuggestions"

git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions