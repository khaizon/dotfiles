return {
	"rebelot/kanagawa.nvim", config=function()
		require('kanagawa').setup({
			compile=true,
			transparent=true,
			theme="dragon",
			colors = {
				palette = {
					-- change all usages of these colors
					-- sumiInk0 = "#000000",
					-- fujiWhite = "#FFFFFF",
				},
				theme = {
					-- change specific usages for a certain theme, or for all of them
					all = {
						ui = {
							bg_gutter = "none",
							nontext = "#DCD7BA"
						}
					}
				}
			},
		})
		;
		vim.cmd("colorscheme kanagawa")
	end,
	build = function()
		vim.cmd('KanagawaCompile')
	end


}
