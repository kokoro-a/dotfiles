# run this to install
# ```powershell
# New-Item -ItemType SymbolicLink -Path $PROFILE -Target C:\Users\karai\dotfiles\profile.ps1
# ```

echo "pulling dotfiles..."
Start-Job -ScriptBlock { git -C $HOME/.config/nvim pull --ff-only }
Start-Job -ScriptBlock { git -C $HOME/dotfiles pull --ff-only }
