# Helper function to grab current directory for use in building relative paths
function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }
$scripts = Get-ScriptDirectory

# Load posh-git example profile
$poshgitprofile = Join-Path (Get-ScriptDirectory) 'Modules\posh-git\profile.example.ps1' 
.$poshgitprofile

# Load machine-specific variables
$variables = Join-Path (Get-ScriptDirectory) 'variables.ps1'
.$variables

# Load command aliases
$aliases = Join-Path (Get-ScriptDirectory) 'aliases.ps1'
.$aliases

# Load user-defined functions
$functions = Join-Path (Get-ScriptDirectory) 'functions.ps1'
.$functions

