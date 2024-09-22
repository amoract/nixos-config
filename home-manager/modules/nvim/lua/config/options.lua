local wo = vim.wo
local opt = vim.opt
local g = vim.g

-- Basic Settings
g.did_load_filetypes = 1
g.formatoptions = "qrn1"
opt.showmode = false
opt.updatetime = 100
wo.signcolumn = "yes"
opt.wrap = false
wo.linebreak = true
opt.virtualedit = "block"
opt.undofile = true
opt.shell = "/bin/fish"            -- Shell по умолчанию
opt.swapfile = false               -- Отключить swap файлы nvim
opt.encoding = "utf-8"             -- Кодировка utf-8
opt.cursorline = true             -- Выделять активную строку где находится курсор
--opt.fileformat = "unix"

-- Scroll
opt.so = 30                    -- При скролле курсор всегда по центру

-- Search
opt.ignorecase = true              -- Игнорировать регистр при поиске
opt.smartcase = true               -- Не игнорирует регистр если в паттерне есть большие буквы
opt.hlsearch = true                -- Подсвечивает найденный паттерн
opt.incsearch = true               -- Интерактивный поиск

-- Mouse
opt.mouse = "a"
opt.mousefocus = true

-- Line Numbers
opt.number = true
opt.relativenumber = true
wo.number = true
wo.relativenumber = true

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Clipboard
opt.clipboard = "unnamedplus"      -- Разрешить общий буфер обмена

-- Shorter messages
opt.shortmess:append("c")

-- Indent Settings
opt.expandtab = true               -- Превратить все tab в пробелы
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true             -- Копировать отступ на новой строке
opt.cindent = true                 -- Автоотступы
opt.smarttab = true                -- Tab перед строкой вставит shiftwidht количество табов

-- Fillchars
opt.fillchars = {
    vert = "│",
    fold = "⠀",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸"
}

-- Colors
opt.termguicolors = true
