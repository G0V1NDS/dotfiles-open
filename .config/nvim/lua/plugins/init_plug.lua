-- Vim-Plug
local Plug = vim.fn["plug#"]
vim.call("plug#begin", vim.fn.expand("$HOME" .. "/.config/nvim/plugged"))

-- Common lua utils used by other plugins
Plug "nvim-lua/plenary.nvim"

-- Editor look and feel
Plug "rktjmp/lush.nvim"
-- Plug 'npxbr/gruvbox.nvim'
Plug "rafamadriz/gruvbox"
Plug "sainnhe/gruvbox-material"
Plug "nvim-lualine/lualine.nvim"
Plug "vimpostor/vim-tpipeline" -- Merges vim statusline with tmux
-- Plug 'G0V1NDS/vim-tpipeline' -- Merges vim statusline with tmux
-- Plug '~/Workspace/vim-plugins/vim-tpipeline' -- Merges vim statusline with tmux
Plug "nvim-tree/nvim-web-devicons"
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" }) -- We recommend updating the parsers on update
Plug "nvim-treesitter/nvim-treesitter-context"
Plug "romgrk/barbar.nvim"
Plug "j-hui/fidget.nvim"

-- Easy search, navigation
Plug("junegunn/fzf", { ["do"] = vim.fn["fzf#install"] })
Plug("ibhagwan/fzf-lua", { ["branch"] = "main" })
Plug "jesseleite/vim-agriculture"
Plug "folke/which-key.nvim"
Plug("majutsushi/tagbar", { ["on"] = "TagbarToggle" })
Plug "nvim-lua/popup.nvim"
Plug "nvim-telescope/telescope.nvim"
Plug("nvim-telescope/telescope-fzf-native.nvim", { ["do"] = "make" })
Plug "jvgrootveld/telescope-zoxide"
Plug "kevinhwang91/nvim-bqf" -- For better preview of quickfix buffers
Plug "stevearc/dressing.nvim" -- For improved vim.ui interfaces

-- Git stuff
Plug "tpope/vim-fugitive"
Plug "lewis6991/gitsigns.nvim"
Plug "tommcdo/vim-fubitive" -- GBrowse bitbucket support
Plug "shumphrey/fugitive-gitlab.vim" -- Gitlab gitlab support
Plug "tpope/vim-rhubarb" -- GBrowse github support

-- Syntax, formatting and auto-completion
Plug "sheerun/vim-polyglot"

-- Managing and installing LSP servers
Plug "williamboman/mason.nvim"
Plug "WhoIsSethDaniel/mason-tool-installer.nvim"
Plug "williamboman/mason-lspconfig.nvim"
Plug "jay-babu/mason-nvim-dap.nvim"
Plug "folke/neodev.nvim"
Plug "neovim/nvim-lspconfig"
Plug "jose-elias-alvarez/null-ls.nvim"
Plug "mhartington/formatter.nvim"
Plug "glepnir/lspsaga.nvim"
Plug "onsails/lspkind.nvim"
Plug "hrsh7th/cmp-nvim-lsp"
Plug "hrsh7th/cmp-buffer"
Plug "hrsh7th/cmp-path"
Plug "hrsh7th/cmp-cmdline"
Plug "hrsh7th/cmp-nvim-lsp-signature-help"
Plug "hrsh7th/nvim-cmp"

Plug("fatih/vim-go", { ["do"] = ":GoUpdateBinaries" })
Plug "bufbuild/vim-buf"

-- Debugging
Plug "mfussenegger/nvim-dap"
Plug "theHamsta/nvim-dap-virtual-text"
Plug "rcarriga/nvim-dap-ui"
Plug "jbyuki/one-small-step-for-vimkind"
Plug "mfussenegger/nvim-dap-python"

-- Task runner
Plug "stevearc/overseer.nvim"

Plug "alvan/vim-closetag"
Plug "lukas-reineke/indent-blankline.nvim"

-- Additional Functionalities
Plug "editorconfig/editorconfig-vim"
Plug("mbbill/undotree", { ["on"] = "UndotreeToggle" })
Plug "tpope/vim-repeat"
Plug "tpope/vim-surround"
Plug "numToStr/Comment.nvim"
Plug "tpope/vim-abolish" -- easily search for, substitute, and abbreviate multiple variants of a word
Plug "ntpeters/vim-better-whitespace"

-- Session management plugins
Plug "tpope/vim-obsession"
Plug "dhruvasagar/vim-prosession"

-- Better working environment
Plug("junegunn/goyo.vim", { ["on"] = "Goyo" })
-- Plug 'junegunn/limelight.vim',      { ['on']= 'LimeLight!!'}
Plug "junegunn/limelight.vim"

-- Rest client
-- Plug 'rest-nvim/rest.nvim'
-- Plug("blackadress/rest.nvim", { ["branch"] = "response_body_stored" })
-- Plug '~/Workspace/vim-plugins/rest.nvim'
Plug("G0V1NDS/rest.nvim", { ["branch"] = "response_body_stored_updated" })
-- Plug("teto/rest.nvim", { ["branch"] = "always-send-string" })

-- DB query executer
Plug "tpope/vim-dadbod"
Plug "kristijanhusak/vim-dadbod-completion"
Plug "kristijanhusak/vim-dadbod-ui"
-- Plug '~/Workspace/vim-plugins/vim-dadbod-ui'

-- File navigator, uses LF file manager to navigate and change working
-- directory
Plug "ptzz/lf.vim"
Plug "voldikss/vim-floaterm"

-- VimWiki for note management
Plug "vimwiki/vimwiki"
Plug "AckslD/nvim-FeMaco.lua" -- For inline code-block edit
Plug "mattn/calendar-vim"
Plug("iamcco/markdown-preview.nvim", { ["do"] = "cd app && yarn install" })

-- Snippet
Plug "L3MON4D3/LuaSnip"
Plug "saadparwaiz1/cmp_luasnip"
Plug "rafamadriz/friendly-snippets"

-- Good to have
Plug "beauwilliams/focus.nvim"
Plug "ron89/thesaurus_query.vim"
Plug "christoomey/vim-tmux-navigator" -- Switch windows with C-[h,j,k,l,\], same for tmux panes
Plug "NvChad/nvim-colorizer.lua" -- Highlights color code or hash
Plug "m4xshen/smartcolumn.nvim"
Plug "rcarriga/nvim-notify"

-- Yet to explorer
-- Plug "tpope/vim-sensible"
-- Plug("heavenshell/vim-pydocstring", { ["do"] = "make install" })
-- Plug "vim-scripts/loremipsum"
-- Plug "metakirby5/codi.vim"
-- Plug "dkarter/bullets.vim"
-- Plug("junegunn/vim-easy-align", { ["on"] = { "EasyAlign" } })
-- Plugings from Luke smith's dotfiles, confirm if still needed

vim.call "plug#end"
