$env:Path += ";C:\Users\simon\AppData\Local\Yarn\bin"
oh-my-posh init pwsh --config "$HOME\.config\config_posh.json" | Invoke-Expression
Import-Module posh-git

Remove-Alias -Name ls

function ls { eza --icons --group-directories-first }
function ll { eza -l --icons --group-directories-first }
function la { eza -a --icons --group-directories-first }
function lla { eza -la --icons --group-directories-first }
function lt { eza --tree --level=2 --icons --group-directories-first }
function lsg { eza -l --git --icons --group-directories-first }




function code{code --add }

#GIT
Set-Alias ga 'git add'

