local ofirkai_highlights = require("ofirkai.tablines.bufferline").highlights

require("bufferline").setup({
	-- highlights = ofirkai_highlights,
	options = {
		themable = true, -- Must
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "center",
			},
		},
		show_buffer_icons = true,
		max_name_length = 25,
	},
})
