# My-Environment-Setup

## VIM

**`~/.vimrc`**

```bash
set number "to show line number
set laststatus=2 "to show status bar
syntax on "turn on syntax highlight
set incsearch "search as characters are entered
set hlsearch "highlight matched keyword
set list "display tab and 

" indentation
set autoindent
filetype plugin indent on

" Tabs to spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
```

## Linux

**`~/.bashrc`**

```bash
# alias
alias ls="ls -G" # to get color

# functions
cd() { builtin cd "$@" && ls; } # ls will be executed right after cd

# command-line syntax key
# set -o vi # using vim syntax
# set -o emacs # using emacs syntax

echo '                                   '
echo '                                   '
echo ' _________________________________ '
echo '( A real programmer counts from 0 )'
echo ' --------------------------------- '
echo '        o   ^__^                   '
echo '         o  (oo)\_______           '
echo '            (__)\       )\/\       '
echo '                ||----w |          '
echo '                ||     ||          '
echo '                                   '
echo '                                   '
echo '                                   '
```

**`~/.bash_profile`**

```bash
source ~/.bashrc # load ~/.bashrc
```

**`~/.ssh/config`**

```bash
Host lp123
    User git 
    Hostname <git_host>
    IdentityFile ~/.ssh/id_rsa_lp123.pub

Host salt_master
    User dong
    Hostname <salt_ip>

Host devmam_db
    User root
    Hostname <db_host>
    IdentityFile ~/.ssh/id_rsa_devmam_db.pub
    LocalForward 14331 <db_host>:1433

Host dev2
    User dong
    Hostname <dev_host2>
   
Host dev3
    User root
    Hostname <ip>
    ProxyCommand ssh dev2 -W %h:%p
    IdentityFile ~/.ssh/id_rsa_dev3  # Using dev2 as jumpbox to reach dev3 indirectly, the private key here is for dev3
```

## Sublime

Install theme Flatland first through Package control

```javascript
{
    "ignored_packages":
    [
        "Vintage"
    ],
    "auto_indent": true,
    "smart_indent": true,
    "detect_indentation": true,
    "auto_match_enabled": true,
    "tab_completion": true,
    "auto_complete": true,
    "tab_size": 4,
    "draw_indent_guides": true,
    "font_size": 13,
    "highlight_line": true,
    "highlight_modified_tabs": true,
    "smart_indent": true,
    "translate_tabs_to_spaces": true,
    "trim_automatic_white_space": true,
    "trim_trailing_white_space_on_save": true,
    "update_check": false,
    "use_simple_full_screen": true,
    "use_tab_stops": true,
    "rulers": [80],
    "show_full_path": true,
    "show_tab_close_buttons": true,
    "caret_style": "solid",
    "draw_white_space": "selection",
    "color_scheme": "Packages/Theme - Flatland/Flatland Dark.tmTheme",
    "theme": "Flatland Dark.sublime-theme",
}
```
