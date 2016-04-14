$userscripts = Join-Path $env:USERPROFILE 'PowerShell-UserScripts\'

# Load posh-git example profile
$poshgitprofile = Join-Path $env:USERPROFILE '\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1' 
.$poshgitprofile

# Load machine-specific variables
$variables = Join-Path $userscripts 'variables.ps1'
.$variables

# Load command aliases
$aliases = Join-Path $userscripts 'aliases.ps1'
.$aliases

# Load user-defined functions
$functions = Join-Path $userscripts 'functions.ps1'
.$functions

