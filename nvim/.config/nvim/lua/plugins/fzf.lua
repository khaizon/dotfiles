return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "echasnovski/mini.icons" },
	opts = {
		rg_opts = "--column --line-number --no-heading --color=always --smart-case --hidden -g '!.git'",
		grep = {
			hidden = true,
		},
	},
	keys = function()
		local fzf = require("fzf-lua")
		return {
			{
				"<leader>ff",
				function()
					fzf.files()
				end,
				desc = "[F]ind [F]iles in current working directory",
			},
			{
				"<leader>fF",
				function()
					fzf.files({ cwd = "~" })
				end,
				desc = "[F]ind [F]iles (home)",
			},
			{
				"<leader>fr",
				function()
					fzf.resume()
				end,
				desc = "[F]ind [R]esume from last search",
			},
			{
				"<leader><leader>",
				function()
					fzf.buffers()
				end,
				desc = "[F]ind existing buffers",
			},
			{
				"<leader>fo",
				function()
					fzf.oldfiles()
				end,
				desc = "[F]ind [O]ld files",
			},
			{
				"<leader>fg",
				function()
					fzf.live_grep()
				end,
				desc = "[F]ind [G]rep in current working directory",
			},
			{
				"<leader>fc",
				function()
					fzf.files({ cwd = vim.fn.stdpath("config") })
				end,
				desc = "[F]ind [C]onfig for neovim",
			},
			{
				"<leader>fb",
				function()
					fzf.builtin()
				end,
				desc = "[F]ind [B]uilt-in fuzzy finders",
			},
			{
				"<leader>fB",
				function()
					fzf.live_grep()
				end,
				desc = "[F]ind [B]ranches in git",
			},
			{
				"<leader>fh",
				function()
					fzf.help_tags()
				end,
				desc = "[F]ind [H]elp tags",
			},
			{
				"<leader>fm",
				function()
					fzf.keymaps()
				end,
				desc = "[F]ind [M]appings",
			},
			{
				"<leader>/",
				function()
					fzf.lgrep_curbuf()
				end,
				desc = "/ Live grep the current buffer",
			},
			{
				"<leader>fw",
				function()
					fzf.grep_cword()
				end,
				desc = "[F]ind [W]ord",
			},
		}
	end,
}
