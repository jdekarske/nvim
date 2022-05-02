local M = {}

function M.get(cp)
	local config = require("catppuccin.config").options
	local nvimtree = config.integrations.nvimtree

	local root_dir_color = cp.base1
	if nvimtree.show_root == true then
		root_dir_color = cp.blue
	end


	return {
		NvimTreeFolderName = { fg = cp.blue },
		NvimTreeFolderIcon = { fg = cp.blue },
		NvimTreeNormal = { fg = cp.text, bg = nvimtree.transparent_panel and "NONE" or cp.base1 },
		NvimTreeOpenedFolderName = { fg = cp.blue },
		NvimTreeEmptyFolderName = { fg = cp.blue },
		NvimTreeIndentMarker = { fg = cp.overlay0 },
		NvimTreeVertSplit = { fg = cp.base2, bg = cp.base2 },
		NvimTreeRootFolder = { fg = root_dir_color, style = "bold" },
		NvimTreeSymlink = { fg = cp.pink },
		NvimTreeStatuslineNc = { fg = cp.base1, bg = cp.base1 },
		NvimTreeGitDirty = { fg = cp.yellow },
		NvimTreeGitNew = { fg = cp.blue },
		NvimTreeGitDeleted = { fg = cp.red },
		NvimTreeSpecialFile = { fg = cp.flamingo },
		NvimTreeImageFile = { fg = cp.text },
		NvimTreeOpenedFile = { fg = cp.pink },
	}
end

return M
