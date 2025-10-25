local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.default_domain = "local"
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    config.default_prog = { 'powershell.exe' }
    config.launch_menu = {
      {
        label = 'PowerShell',
        args = { 'powershell.exe' },
      },
      {
        label = 'PowerShell (Admin)',
        args = { 'powershell.exe', '-Command', 'Start-Process', 'powershell', '-Verb', 'RunAs' },
      },
      {
        label = 'WSL',
        args = { 'wsl.exe' },
      },
      {
        label = 'Command Prompt',
        args = { 'cmd.exe' },
      },
    }
end
if wezterm.target_triple == "x86_64-unknown-linux-gnu" then
    config.default_prog = { 'zsh' }
end




config.font = wezterm.font("HackGen Console NF", {weight="Regular", stretch="Normal", style="Normal"})
config.color_scheme = 'nightfox'

config.keys = {
  {
    key = 'l',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ShowLauncher,
  },
}

config.mouse_bindings = {
  {
    event = { Down = { streak = 1, button = 'Right' } },
    mods = 'NONE',
    action = wezterm.action.PasteFrom 'Clipboard',
  },
}

config.window_decorations = "RESIZE"

return config
