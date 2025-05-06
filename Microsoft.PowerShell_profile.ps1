$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
[Console]::OutputEncoding = [System.Text.UTF8Encoding]::new()
Invoke-Expression (&starship init powershell)
Enable-TransientPrompt


#add module path
$env:PSModulePath += ";$HOME\Documents\PowerShell\Modules"

#alias 

Set-Alias ls lsd

function profile{nvim $PROFILE}
function star{nvim ~/.config/starship.toml}
function lazy{nvim $env:LOCALAPPDATA\nvim}

#GIT
Set-Alias ga 'git add'
function gl{git log --oneline --graph --decorate --all}

