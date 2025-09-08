return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	-- lazy = false,

	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			-- ui = {
			-- 	icons = {
			-- 		package_installed = "✓",
			-- 		package_pending = "➜",
			-- 		package_uninstalled = "✗",
			-- 	},
			-- },
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"ts_ls", -- tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"graphql",
				"emmet_ls",
				"prismals",
				"pyright",
				"rust_analyzer",
				-- "dockerls",
				-- "docker_language_server",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"ruff", -- python formatter
				"black", -- python formatter
				"pylint",
				"eslint_d",
				-- "docker_language_server",
			},
		})
	end,
}
