return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        -- Neovim Essentials
        'c',
        'lua',
        'vim',
        'vimdoc',
        'query',

        -- Rust
        'rust',
        'toml',

        -- C# / .NET
        'c_sharp',

        -- Web / Front-End
        'html',
        'css',
        'scss',
        'javascript',
        'typescript',
        'tsx', -- tsx is needed if you use JSX/React syntax
        'json',

        -- Config / DevOps / Other
        'yaml',
        'python',
        'markdown',
        'markdown_inline',
      },

      sync_install = false,
      auto_install = true,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      indent = {
        enable = true,
      },
    }
  end,
}
