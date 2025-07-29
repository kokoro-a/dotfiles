# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository containing configuration files for development environments. The repository is minimal and primarily serves as a configuration sync tool.

## Repository Structure

- `profile.ps1` - PowerShell profile configuration that automatically pulls updates from git repositories

## Setup and Installation

The PowerShell profile is designed to be symlinked to the user's PowerShell profile location:

```powershell
New-Item -ItemType SymbolicLink -Path $PROFILE -Target C:\Users\karai\dotfiles\profile.ps1
```

## Key Functionality

The `profile.ps1` file automatically:
- Pulls updates from the nvim configuration repository (`$HOME/.config/nvim`)
- Pulls updates from the dotfiles repository (`$HOME/dotfiles`)
- Runs these operations as background jobs for non-blocking startup

## Development Notes

This repository uses git for version control and is designed to work across Windows environments with PowerShell. The main functionality revolves around keeping development environment configurations synchronized.