local g = vim.g
local cmd = vim.cmd

cmd [[packadd nvim-web-devicons]]

-- nvim tree
g.nvim_tree_side                 = 'left'
g.nvim_tree_width                = 30
g.nvim_tree_auto_open            = 0
g.nvim_tree_auto_close           = 1
g.nvim_tree_quit_on_open         = 1
g.nvim_tree_follow               = 1
g.nvim_tree_indent_markers       = 1
g.nvim_tree_hide_dotfiles        = 1
g.nvim_tree_git_hl               = 1
g.nvim_tree_root_folder_modifier = ':~'
g.nvim_tree_tab_open             = 1
g.nvim_tree_width_allow_resize   = 1
g.nvim_tree_group_empty          = 1

cmd 'highlight NvimTreeFolderIcon guibg=blue'

-- minimap 
g.minimap_auto_start           = 0         -- if set minimap will show at startup
g.minimap_auto_start_win_enter = 0         -- if set with g:minimap_auto_start minimap shows on WinEnter
g.minimap_width                = 10        -- the width of the minimap window in characters
g.minimap_highlight            = 'Title'   -- the color group for current position
g.minimap_base_highlight       = 'Normal'  -- the base color group for minimap
g.minimap_block_filetypes      = { 'fugitive', 'nerdtree', 'tagbar' } -- disable minimap for specific file types
g.minimap_block_buftypes       = { 'nofile', 'nowrite', 'quickfix', 'terminal', 'prompt' } -- disable minimap for specific buffer types
g.minimap_close_filetypes      = { 'startify', 'netrw', 'vim-plug' } -- close minimap for specific file types
g.minimap_close_buftypes       = { }       -- close minimap for specific buffer types
g.minimap_left                 = 0         -- if set minimap window will append left
g.minimap_highlight_range      = 0         -- if set minimap will highlight range of visible lines

-- buffer line
require'bufferline'.setup{}

-- telescope
require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_position = "bottom",
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_defaults = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {'build', '.vscode', '.vs', '.cache' },
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    shorten_path = true,
    winblend = 0,
    width = 0.75,
    preview_cutoff = 120,
    results_height = 1,
    results_width = 0.8,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}

require "nvim-web-devicons".setup {
    override = {
        html       = { icon = "", color = "#DE8C92", name = "html" },
        css        = { icon = "", color = "#61afef", name = "css" },
        js         = { icon = "", color = "#EBCB8B", name = "js" },
        ts         = { icon = "ﯤ", color = "#519ABA", name = "ts" },
        kt         = { icon = "󱈙", color = "#ffcb91", name = "kt" },
        png        = { icon = " ", color = "#BD77DC", name = "png" },
        jpg        = { icon = " ", color = "#BD77DC", name = "jpg" },
        jpeg       = { icon = " ", color = "#BD77DC", name = "jpeg" },
        mp3        = { icon = "", color = "#C8CCD4", name = "mp3" },
        mp4        = { icon = "", color = "#C8CCD4", name = "mp4" },
        out        = { icon = "", color = "#C8CCD4", name = "out" },
        Dockerfile = { icon = "", color = "#b8b5ff", name = "Dockerfile" },
        rb         = { icon = "", color = "#ff75a0", name = "rb" },
        vue        = { icon = "﵂", color = "#7eca9c", name = "vue" },
        py         = { icon = "", color = "#a7c5eb", name = "py" },
        toml       = { icon = "", color = "#61afef", name = "toml" },
        lock       = { icon = "", color = "#DE6B74", name = "lock" },
        zip        = { icon = "", color = "#EBCB8B", name = "zip" },
        xz         = { icon = "", color = "#EBCB8B", name = "xz" } }
    }
