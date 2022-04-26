local status_ok, color_scheme = pcall(require, 'gruvbox')
if not status_ok then
  return
end

require('gruvbox').load()

