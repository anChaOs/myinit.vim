# myinit.vim

> This project is my personal neovim configuration file. It is used for python programing normally.



## neovim installation

### 1. macOS/ OS X

Installation

```shell
brew install neovim
```

To update the development version of Nvim:

```shell
brew reinstall neovim
```

### 2. Ubuntu

**Since 18.04 via official repository** As in Debian, Neovim is in [Ubuntu](https://packages.ubuntu.com/search?keywords=neovim).

```shell
sudo apt install neovim
```

Important: those PPA have dropped support for Xenial 16.04 and older.

To be able to use **add-apt-repository** you may need to install software-properties-common:

```shell
sudo apt-get install software-properties-common
```

If you're using an older version Ubuntu([view here](https://askubuntu.com/questions/422975/e-package-python-software-properties-has-no-installation-candidate) , it says for <= 12.04) you must use:

```shel
sudo apt-get install python-software-properties
```

Run the following commands:

```shell
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```



## config file path

```shell
cp init.vim ~/.config/nvim/init.vim
```



## plugin manager

[vim-plug](https://github.com/junegunn/vim-plug)

### 1. Installation

```shell
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### 2. Usage

```shell
nvim ~/.config/nvim/init.vim
:source %
PlugInstall	# You may try more than one time in China or in Chinese vps when you get error during installation.
```

### 3. Plugin introduce

* [nerdtree](https://github.com/preservim/nerdtree): The NERDTree is a file system explorer for the Vim editor. 
* [vim-startify](https://github.com/mhinz/vim-startify): This plugin provides a start screen for Vim and Neovim.
* [vim-fugitive](https://github.com/tpope/vim-fugitive): Fugitive is the premier Vim plugin for Git. 
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter): A Vim plugin which shows a git diff in the sign column.
* [indentLine](https://github.com/Yggdroot/indentLine): This plugin is used for displaying thin vertical lines at each indentation level for code indented with spaces.
* [vim-easymotion](https://github.com/easymotion/vim-easymotion): EasyMotion provides a much simpler way to use some motions in vim.
* [vim-surround](https://github.com/tpope/vim-surround): Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
* [ncm2](https://github.com/ncm2/ncm2): NCM2, formerly known as [nvim-completion-manager](https://github.com/roxma/nvim-completion-manager), is a slim, fast and hackable completion framework for neovim.
* [vim-airline](https://github.com/vim-airline/vim-airline): Lean & mean status/tabline for vim that's light as air.
* [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes): This is the official theme repository for [vim-airline](https://github.com/vim-airline/vim-airline)
* [vim-hybrid](https://github.com/w0ng/vim-hybrid): A dark colour scheme for Vim.

### 4. Key feature

1. `<leader>w` to quick save, which means `,w` to quick save
2. jj to escape insert mode
3. `<leader>v`(`,v`) to find the file in nerdtree, `<leader>g`(`,v`)to toggle the nerdtree
4. `ss` for quick search
