return {
    cmd = { "emmylua_ls" },
    filetypes = { "lua" },
    root_markers = { ".emmyrc.json", ".luarc.json", ".git" },
    settings = {
        Lua = { diagnostics = { globals = { 'vim' } } }
    }
}
