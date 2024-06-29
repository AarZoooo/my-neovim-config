-- ~/.config/nvim/lua/transparent.lua

-- Function to set highlight groups
local function set_highlight(group, opts)
  local cmd = 'highlight ' .. group
  for key, value in pairs(opts) do
    cmd = cmd .. ' ' .. key .. '=' .. value
  end
  vim.cmd(cmd)
end

-- Set the background of the Normal highlight group to transparent
set_highlight('Normal', { guibg = 'NONE' })

-- Optionally, set other highlight groups to be transparent
set_highlight('NormalNC', { guibg = 'NONE' })
set_highlight('SignColumn', { guibg = 'NONE' })
set_highlight('EndOfBuffer', { guibg = 'NONE' })
set_highlight('MsgArea', { guibg = 'NONE' })
set_highlight('VertSplit', { guibg = 'NONE' })
set_highlight('StatusLine', { guibg = 'NONE' })
set_highlight('StatusLineNC', { guibg = 'NONE' })
set_highlight('TabLineFill', { guibg = 'NONE' })
set_highlight('TabLine', { guibg = 'NONE' })
set_highlight('TabLineSel', { guibg = 'NONE' })

