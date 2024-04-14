local wezterm = require("wezterm")
local mux = wezterm.mux
local act = wezterm.action
local config = {}
local keys = {}
local mouse_bindings = {}
local launch_menu = {}

--- Setup PowerShell options
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	--- Set Pwsh as the default on Windows
	config.default_prog = { "powershell.exe", "-NoLogo" }
	table.insert(launch_menu, {
		label = "PowerShell",
		args = { "powershell.exe", "-NoLogo" },
	})
else
	--- Non-Windows Machine
end

-- Mousing bindings
mouse_bindings = {
	-- Change the default click behavior so that it only selects
	-- text and doesn't open hyperlinks
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "NONE",
		action = act.CompleteSelection("ClipboardAndPrimarySelection"),
	},

	-- and make CTRL-Click open hyperlinks
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = act.OpenLinkAtMouseCursor,
	},
	{
		event = { Down = { streak = 3, button = "Left" } },
		action = wezterm.action.SelectTextAtMouseCursor("SemanticZone"),
		mods = "NONE",
	},
}

--- Default config settings
config.scrollback_lines = 7000
config.hyperlink_rules = wezterm.default_hyperlink_rules()
config.hide_tab_bar_if_only_one_tab = true
-- config.color_scheme = "Flexoki Dark"
config.color_scheme = "AdventureTime"
config.font = wezterm.font_with_fallback({
	{
		family = "Hack Nerd Font",
	},
})
config.font_size = 12
config.line_height = 1
config.launch_menu = launch_menu
config.default_cursor_style = "BlinkingBar"
-- config.disable_default_key_bindings = true
config.keys = keys
config.mouse_bindings = mouse_bindings
-- config.leader = leader

return config
