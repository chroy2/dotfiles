return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato", -- latte, frappe, macchiato, mocha
			background = { -- :h background
				light = "latte",
				dark = "mocha",
			},
			transparent_background = false, -- disables setting the background color.
			float = {
				transparent = false, -- enable transparent floating windows
				solid = false, -- use solid styling for floating windows, see |winborder|
			},
			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
			term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
			dim_inactive = {
				enabled = false, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15, -- percentage of the shade to apply to the inactive window
			},
			no_italic = false, -- Force no italic
			no_bold = false, -- Force no bold
			no_underline = false, -- Force no underline
			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
				comments = { "italic" }, -- Change the style of comments
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
				-- miscs = {}, -- Uncomment to turn off hard-coded styles
			},
			highlight_overrides = {
				latte = function(colors)
					return {
						FlashLabel = { fg = colors.base, bg = colors.red, style = { "bold" } },
					}
				end,
			},
			color_overrides = {
				macchiato = {
					rosewater = "#F5B8AB",
					flamingo = "#F29D9D",
					pink = "#AD6FF7",
					mauve = "#FF8F40",
					red = "#E66767",
					maroon = "#EB788B",
					peach = "#FAB770",
					yellow = "#FACA64",
					green = "#70CF67",
					teal = "#4CD4BD",
					sky = "#61BDFF",
					sapphire = "#4BA8FA",
					blue = "#00BFFF",
					lavender = "#00BBCC",
					text = "#C1C9E6",
					subtext1 = "#A3AAC2",
					subtext0 = "#8E94AB",
					overlay2 = "#7D8296",
					overlay1 = "#676B80",
					overlay0 = "#464957",
					surface2 = "#3A3D4A",
					surface1 = "#2F313D",
					surface0 = "#1D1E29",
					base = "#0b0b12",
					mantle = "#11111a",
					crust = "#191926",
				},
				mocha = {
					rosewater = "#ea6962",
					flamingo = "#ea6962",
					red = "#ea6962",
					maroon = "#ea6962",
					pink = "#d3869b",
					mauve = "#d3869b",
					peach = "#e78a4e",
					yellow = "#d8a657",
					green = "#a9b665",
					teal = "#89b482",
					sky = "#89b482",
					sapphire = "#89b482",
					blue = "#7daea3",
					lavender = "#7daea3",
					text = "#ebdbb2",
					subtext1 = "#d5c4a1",
					subtext0 = "#bdae93",
					overlay2 = "#a89984",
					overlay1 = "#928374",
					overlay0 = "#595959",
					surface2 = "#4d4d4d",
					surface1 = "#404040",
					surface0 = "#292929",
					base = "#1d2021",
					mantle = "#191b1c",
					crust = "#141617",
				},
				frappe = {
					rosewater = "#eb7a73",
					flamingo = "#eb7a73",
					red = "#eb7a73",
					maroon = "#eb7a73",
					pink = "#e396a4",
					mauve = "#e396a4",
					peach = "#e89a5e",
					yellow = "#E7B84C",
					green = "#7cb66a",
					teal = "#99c792",
					sky = "#99c792",
					sapphire = "#99c792",
					blue = "#8dbba3",
					lavender = "#8dbba3",
					text = "#f1e4c2",
					subtext1 = "#e5d5b1",
					subtext0 = "#c5bda3",
					overlay2 = "#b8a994",
					overlay1 = "#a39284",
					overlay0 = "#656565",
					surface2 = "#5d5d5d",
					surface1 = "#505050",
					surface0 = "#393939",
					base = "#1d2224",
					mantle = "#1d2224",
					crust = "#1f2223",
				},
				latte = {
					rosewater = "#fdf7e8",
					flamingo = "#cb4b16",
					pink = "#d33682",
					mauve = "#6c71c4",
					red = "#dc322f",
					maroon = "#c03260",
					peach = "#cb4b1f",
					yellow = "#b58900",
					green = "#859900",
					teal = "#2aa198",
					sky = "#2398d2",
					sapphire = "#0077b3",
					blue = "#268bd2",
					lavender = "#7b88d3",
					text = "#657b83",
					subtext1 = "#586e75",
					subtext0 = "#073642",
					overlay2 = "#002b36",
					overlay1 = "#839496",
					overlay0 = "#93a1a1",
					surface2 = "#eee8d5",
					surface1 = "#ebecef",
					surface0 = "#ccd0da",
					base = "#fdf6e3",
					mantle = "#f7f1dc",
					crust = "#f5ecd7",
				},
			},
			custom_highlights = {},
			default_integrations = true,
			auto_integrations = false,
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = false,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
				-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
			},
		})

		-- setup must be called before loading
		vim.cmd.colorscheme("catppuccin")
	end,
}
