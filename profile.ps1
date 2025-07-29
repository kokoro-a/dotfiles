# ```powershell
# $PROFILE
# ```
# The above will show you the path where this file should be placed

Start-Job -ScriptBlock { git -C $HOME/.config/nvim pull --ff-only }
Start-Job -ScriptBlock { git -C $HOME/dotfiles pull --ff-only }
