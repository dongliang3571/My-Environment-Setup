# My-Environment-Setup

## VIM

**`~/.vimrc`**

```bash
set number
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
```

## Linux

**`~/.bashrc`**

```bash
# alias
alias ls="ls -G" # to get color

# functions
cd() { builtin cd "$@" && ls; } # ls will be executed right after cd
```

**`~/.bash_profile`**

```bash
source ~/.bashrc # load cd
```
