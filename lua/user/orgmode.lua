-- Load custom tree-sitter grammar for org filetype
require('orgmode').setup_ts_grammar()

-- Tree-sitter configuration
require'nvim-treesitter.configs'.setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    disable = {'org','r'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
    --additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
    additional_vim_regex_highlighting = false,
  },
  ensure_installed = {'r','python','org'}, -- Or run :TSUpdate org
  sync_install = false,
  indent = {
      enable = true
      }
}

require('orgmode').setup({
  org_agenda_files = {'~/Dropbox/org-roam/*'},
  org_default_notes_file = '~/Dropbox/org-roam/notes.org',
  org_todo_keywords = {'TODO', 'NEXT', 'ACTIVE', 'BACKLOG','PLAN','READY','REVIEW','WAIT','HOLD','|', 'DONE', 'COMPLETED','CANC'},
  org_todo_keyword_faces = {
    TODO = ':foreground #fb4934 :weight bold', -- :foreground #ebdbb2' -- overrides builtin color for `TODO` keyword
    NEXT = ':foreground #83a598 :slant italic :underline on :weight bold',
    ACTIVE = ':foreground #8ec07c :weight bold',
    BACKLOG = ':foreground #949494 :weight bold',
    PLAN = ':foreground #d3869b :slant italic',
    READY = ':foreground #fe8019 :slant italic',
    REVIEW = ':foreground #fabd2f :weight bold',
    WAIT = ':foreground #bcbcbc :weight bold :slant italic',
    HOLD = ':background #ff80bf :slant italic :underline on',
    DONE = ':background #ff80bf :slant italic :underline on',
    COMPLETED = ':background #ff80bf :slant italic :underline on',
    CANC = ':background #ff80bf :slant italic :underline on'
  },
  org_indent_mode = 'indent'
})
