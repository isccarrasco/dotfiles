return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin")

		-- adding transparent in the bg
		-- vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
		-- vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
	end,
}
