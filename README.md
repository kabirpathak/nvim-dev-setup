Additional things to ensure: 

---

- `ripgrep` must be installed to enable fuzzy search's <leader>fs command.
  - Install using `brew install ripgrep`.

- `nerd font` must be installed to enable symbols for nvim-tree.
  - Install using `brew install --cask font-0xproto-nerd-font`.

- `lazygit` must be installed using brew
  - Install using `brew install jesseduffield/lazygit/lazygit`.
  - Requires `xcode-select`: `xcode-select --install`.

---

### My favorite commands: 
(so far, will keep adding as i become more comfortable with this editor.) 

- copy: <leader>y
- paste: <leader>p
- delete current line: dd
- clear current line: cc
- clear current line after the cursor and go to insert mode: shift + c
- go to next line with insert mode: o (really intuitive)
- go to line number (down): 5j; (up): 6k;
- go to the last line: <shift>g (this will basically go to start of the last line.)
- go to the end of current line: g_
- comment out a line: gcc

splits: 
- split horizontally: <leader>sh; vertically: <leader>sv;
- close current split: <leader>sx; 
- maximize current split: <leader>sm; (absolute favorite) 
- move between splits: optionkey + h,j,k,l

vim-tree:
- toggle the sidebar: <leader>e
- copy and paste file from one directory to another: c and p
- copy file base path (README for README.md): ge
- copy file relative path: gy 

telescope:
- file search: <leader>ff
- string search throughout the project: <leader>fs and <leader>fc (don't quite understand the difference b/w these two yet.) 

lazygit:
- Still in progress, haven't quite spent time on it yet. 
