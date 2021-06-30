local utils = require "utils"
local wk = require("which-key")

local leader = "<Space>"
local localleader = ","

local keys = {
    ["<Tab>"] = {":tabnext<CR>", "Jump to next tab"},
    ["0"] = {":tabp<CR>", "Jump to previous active tab"},
    ["1"] = {"1gt", "which_key_ignore"},
    ["2"] = {"2gt", "which_key_ignore"},
    ["3"] = {"3gt", "which_key_ignore"},
    ["4"] = {"4gt", "which_key_ignore"},
    ["5"] = {"5gt", "which_key_ignore"},
    ["6"] = {"6gt", "which_key_ignore"},
    ["7"] = {"7gt", "which_key_ignore"},
    ["8"] = {"8gt", "which_key_ignore"},
    ["9"] = {"9gt", "which_key_ignore"},
    ["u"] = {":update<CR>", "Save file"},
    ["d"] = {":bd<CR>", "Delete buffer"},
    ["q"] = {":lua require'utils'.close_floating_windows();vim.api.nvim_command('quit')<CR>", "Quit"},
    ["x"] = {":q!<CR>", "Close without saving"},
    ["Q"] = {":qa!<CR>", "Quit all"}
}
wk.register(keys, {prefix = localleader})
wk.register(keys, {prefix = localleader, mode = 'v'})

keys = {
    ["\\"] = {":TagbarToggle<CR>", "Toggle tagbar"},
    ["/"] = {":call Comment()<CR>", "Comment"},
    ["C"] = {":Code!!<CR>", "Virtual REPL"},
    ["p"] = {":Files<CR>", "Find files"},
    ["P"] = {":!opout <c-r>%<CR><CR>", "Preview files"},
    ["f"] = {":Rg<CR>", "Find text"},
    ["_"] = {"<C-W>s", "Split below"},
    ["|"] = {"<C-W>v", "Split right"},
    ["c"] = {":w! | !compiler \"<c-r>%\"<CR>", "Compile"},
    ["X"] = {":split | term<CR>", "Terminal"},
    ["z"] = {"Goyo", "Goyo"},
    ["."] = {":tabnew $MYVIMRC<CR>", "Open Init"},
    ["R"] = {":source $MYVIMRC<CR>", "Reload Init"},
    ["U"] = {":UndotreeToggle<CR>", "Undo Tree"},
    [" "] = {":noh<CR>", "No Highlight"},
    ["L"] = {":Limelight<CR>", "Limelight activate"},
    ["o"] = {":tabnew | terminal lf<CR>", "Open file explorer"}
}
wk.register(keys, {prefix = leader})
wk.register(keys, {prefix = leader, mode = 'v'})

keys = {
    g = {
        name = 'Git',
        ["b"] = {":Git blame<CR>", "Blame"},
        ["B"] = {":GBrowse<CR>", "Browse"},
        ["c"] = {":Git commit<CR>", "Commit"},
        ["d"] = {":Git diff<CR>", "Diff"},
        ["D"] = {":Gdiffsplit<CR>", "Diff split"},
        ["g"] = {":GGrep<CR>", "Grep"},
        ["s"] = {":Git<CR>", "Status"},
        ["l"] = {":Git log<CR>", "Log"},
        ["p"] = {":Git push<CR>", "Push"},
        ["P"] = {":Git pull<CR>", "Pull"}
    }
}
wk.register(keys, {prefix = leader})
wk.register(keys, {prefix = leader, mode = 'v'})

keys = {
    l = {
        name = 'LSP',
        ["gd"] = {"<Cmd>lua vim.lsp.buf.definition()<CR>", "Definition"},
        ["gD"] = {"<Cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration"},
        ["gr"] = {"<cmd>lua vim.lsp.buf.references()<CR>", "References"},
        ["gs"] = {"<Cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature"},
        ["gi"] = {"<cmd>lua vim.lsp.buf.implementation()<CR>", "Implementation"},
        ["gt"] = {"<cmd>lua vim.lsp.buf.type_definition()<CR>", "Type definition"},
        ["gw"] = {"<cmd>lua vim.lsp.buf.document_symbol()<CR>", "Document symbol"},
        ["gW"] = {"<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", "Workspace symbol"},
        ["i"] = {"<cmd>lua vim.lsp.buf.incoming_calls()<CR>", "Incoming calls"},
        ["o"] = {"<cmd>lua vim.lsp.buf.outgoing_calls()<CR>", "Outgoing calls"},
        ["a"] = {":lua vim.lsp.buf.code_action()<CR>", "Action"},
        ["k"] = {":lua vim.lsp.buf.hover()<CR>", "Hover"},
        ["="] = {":update | lua require'lsp.formatting'.format()<CR>", "Format"},
        ["d"] = {":lua vim.lsp.diagnostic.set_loclist()<CR>", "Diagnostic"},
        ["D"] = {":lua vim.lsp.util.show_line_diagnostics()<CR>", "Diagnostic"},
        ["dd"] = {":lua require'lsp.diagnostics'.line_diagnostics()<CR>", "Diagnostic"},
        ["n"] = {":lua vim.lsp.diagnostic.goto_next()<CR>", "Next diagnostic"},
        ["p"] = {":lua vim.lsp.diagnostic.goto_prev()<CR>", "Prev diagnostic"},
        ["q"] = {":lua require('lists').change_active('Quickfix')<CR>", "Quick fix"},
        ["r"] = {":lua require'lsp.rename'.rename()<CR>", "Rename"},
        ["R"] = {":lua require('lists').change_active('Quickfix')<CR>:lua vim.lsp.buf.references()<CR>", "References"}
    }
}
wk.register(keys, {prefix = leader})
wk.register(keys, {prefix = leader, mode = 'v'})

keys = {
    t = {
        name = 'Toggle',
        ["n"] = {":set nonumber!<CR>", "Line numbers"},
        ["r"] = {":set norelativenumber!<CR>", "Relative line numbers"},
        ["w"] = {":set wrap!<CR>", "Word wrap"},
        ["c"] = {":ColorizerToggle<CR>", "Colorizer"},
        ["l"] = {":Limelight!!<CR>", "Limelight"},
        ["i"] = {":IndentLinesToggle<CR>", "Indent lines"},
        ["u"] = {":UndotreeToggle<CR>", "Undo Tree"},
        ["h"] = {":call ToggleHiddenAll()<CR>", "Hide"}
    }
}
wk.register(keys, {prefix = leader})
wk.register(keys, {prefix = leader, mode = 'v'})

keys = {
    m = {
        name = 'Macro',
        ["j"] = {":'<,'>!jq .", "Format selection as json"},
        ["n"] = {":%s/\\n/\r/g", "Replace \n with newline charFormat sqlalchemy query from logs"},
        ["{"] = {":%s/\\%V{/{{/g | %s/\\%V}/}}/g", "Replace braces with double braces for multiline formatted string"},
        ["\""] = {":%s/'/\"/g", "Replace ' with \""},
        ["\\"] = {":%s/\"/'/g", "Replace \" with '"}
    }
}
wk.register(keys, {prefix = leader})
wk.register(keys, {prefix = leader, mode = 'v'})
