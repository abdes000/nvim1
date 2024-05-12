vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})

-- load snippets from path/of/your/nvim/config/my-cool-snippets
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./my-cool-snippets" } })

-- require("luasnip.loaders.from_snipmate").lazy_load()

