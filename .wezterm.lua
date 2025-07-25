local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.default_domain = "WSL:Ubuntu-22.04"
config.font = wezterm.font("HackGen Console NFJ", {weight="Regular", stretch="Normal", style="Normal"})
config.color_scheme = 'Tokyo Night'
return config
