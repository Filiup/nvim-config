local function map(mode, key, action) 
	vim.keymap.set(mode, key, action, { silent = true })
end

-- Prepinanie medzi tabs  

-- <C-w-w> => prepinanie medzi oknami

map('n', '<leader>1', '1gt')
map('n', '<leader>2', '2gt')
map('n', '<leader>3', '3gt')
map('n', '<leader>4', '4gt')
map('n', '<leader>5', '5gt')
map('n', '<leader>6', '6gt')
map('n', '<leader>7', '7gt')
map('n', '<leader>7', '7gt')
map('n', '<leader>7', '7gt')
map('n', '<leader>8', '8gt')
map('n', '<leader>9', '9gt')

map('n', '<C-Left>', '<CMD>tabprevious<CR>')
map('n', '<C-Right>', '<CMD>tabnext<CR>')

-- NvimTree
map('n', '<C-a>', '<CMD>NvimTreeToggle<CR>')

-- ToggleTerm
map('n', '<C-t>', '<CMD>ToggleTerm<CR>')
map('t', '<C-t>', '<CMD>ToggleTerm<CR>')
map('t', '<C-Up>', '<CMD>horizontal resize +5<CR>')
map('t', '<C-Down>', '<CMD>horizontal resize -5<CR>')
-- NeoVim LSP

-- Skoci na definiciu funkcie, premennej, classy ...
map('n', 'gd', ':lua vim.lsp.buf.definition()<cr>')	 

-- Skoci na deklaraciu funkcie, premennej, classy ...
map('n', 'gD', ':lua vim.lsp.buf.declaration()<cr>')

-- Skoci implementaciu classy ...
map('n', 'gi', ':lua vim.lsp.buf.implementation()<cr>')

-- Hladanie urciteho symbolu v suboroch
map('n', 'gw', ':lua vim.lsp.buf.document_symbol()<cr>')

map('n', 'gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
map('n', 'gr', ':lua vim.lsp.buf.references()<cr>')
map('n', 'gt', ':lua vim.lsp.buf.type_definition()<cr>')
map('n', 'K', ':lua vim.lsp.buf.hover()<cr>')

-- Sluzi na zobrazenie signature fukcie ( parametre, ktore dokaze skonzumovat, return hodnota )
map('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')

map('n', '<leader>af', ':lua vim.lsp.buf.code_action()<cr>')

-- Premenovanie nazvu premennej, funkcie ... v celom subore
map('n', '<leader>rn', ':lua vim.lsp.buf.rename()<cr>')




-- Telescope
map('n', '<C-f>', '<CMD>Telescope find_files<CR>')
