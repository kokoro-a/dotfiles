$Dir = Split-Path -Parent $PSCommandPath
New-Item -ItemType SymbolicLink -Force -Path $PROFILE -Target (Join-Path $Dir "profile.ps1")
New-Item -ItemType SymbolicLink -Force -Path (Join-Path $HOME ".wezterm.lua") -Target (Join-Path $Dir ".wezterm.lua")