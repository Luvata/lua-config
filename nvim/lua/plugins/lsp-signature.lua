local ls_status_ok, lsp_signature = pcall(require, 'lsp_signature')
if not ls_status_ok then
  return
end

lsp_signature.setup{
  bind = true,
  doc_lines = 5,
  hint_enable = false
}
