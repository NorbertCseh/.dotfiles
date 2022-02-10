Import-Module oh-my-posh
Set-PoshPrompt -Theme material

Import-Module posh-git
Import-Module -Name Terminal-Icons

Set-Alias -Name vim -Value nvim

function which ($command){
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Silent-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
