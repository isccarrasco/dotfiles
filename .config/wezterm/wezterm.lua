local wezterm = require("wezterm")

local config = {}

-- if wezterm.config_builder then config = wezterm.config_builder() end
config = wezterm.config_builder()

config = {
  automatically_reload_config = true,
  
  enable_tab_bar = true,
  tab_bar_at_bottom = true,
  use_fancy_tab_bar = false,
  
  window_close_confirmation = "NeverPrompt",
  window_decorations = "RESIZE", -- disable the title bar but enable the resizable border
  default_cursor_style = "BlinkingBar",
  -- color_scheme = "Nord (Gogh)",
  -- color_scheme = "AdventureTime",
  -- color_scheme = "Batman",
  -- color_scheme = "Catppuccin Macchiato",
  -- color_scheme = "Catppuccin Frappe",
  -- color_scheme = "Tokyo Night",
  color_scheme = "Dracula (Official)",
  font = wezterm.font_with_fallback({
    {family = "Agave Nerd Font", scale=1.4},
    {family = "Fira Code"},
  }),
  
  window_background_opacity = 0.8,
  
  -- disable_default_key_bindings = true,
  -- keys = {
  --   {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
  --   {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}},
  -- }
}

return config

