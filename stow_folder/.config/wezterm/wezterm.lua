local wezterm = require 'wezterm'
local config  = wezterm.config_builder()

config.font      = wezterm.font'JetBrainsMono Nerd Font Mono'
config.font_size = 15

config.default_prog = { '/opt/homebrew/bin/fish', '-l' }

config.use_fancy_tab_bar            = false
config.tab_bar_at_bottom            = true
config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
    left   = 0,
    right  = 0,
    top    = 0,
    bottom = 0,
}

return config