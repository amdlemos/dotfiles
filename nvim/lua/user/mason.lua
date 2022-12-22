require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "sumneko_lua", "rust_analyzer" },
	automatic_installation = true,
})

local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

local formatting = null_ls.builtins.formatting

local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  debug = false,
  source = {
    formatting.prettier.with({ extra_args = { "--no-semi", "--single" }}),
    formatting.black.with({ extra_args = { "--fast" } }),
    formatting.stylua,
    diagnostics.flake8
  },
})
-- require("null-ls").setup({ 
-- 	sources = {
-- 		require("null-ls").builtins.formatting.stylua,
-- 		require("null-ls").builtins.diagnostics.eslint,
-- 		require("null-ls").builtins.completion.spell,
-- 	},
-- })
