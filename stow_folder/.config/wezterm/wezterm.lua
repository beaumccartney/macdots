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

config.default_cursor_style = 'SteadyBlock'
config.animation_fps = 1
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'

local white       = '#f7f1ff'
local dull_black  = '#363537'
local light_black = '#69676c'
local pureblack   = '#000000'
local red         = '#fc618d'
local green       = '#7bd88f'
local yellow      = '#fce566'
local blue        = '#fd9353'
local magenta     = '#948ae3'
local cyan        = '#5ad4e6'

config.colors = {
    background   = pureblack,
    foreground   = white,

    selection_fg = dull_black,
    selection_bg = white,

    cursor_fg    = pureblack,
    cursor_bg    = white,

    ansi = {
        dull_black,
        red,
        green,
        yellow,
        blue,
        magenta,
        cyan,
        white,
    },
    brights = {
        light_black,
        red,
        green,
        yellow,
        blue,
        magenta,
        cyan,
        white,
    },
}

return config
