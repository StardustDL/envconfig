Task default -depends Shell

Task Shell -depends Powershell

Task Powershell {
    Invoke-psake ../shell/pwsh/oh-my-posh.ps1
}