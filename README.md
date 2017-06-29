# My-Environment-Setup

## VIM

**`~/.vimrc`**

```bash
set number "to show line number
set laststatus=2 "to show status bar
syntax on " turn on syntax highlight
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch "highlight matched keyword
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

**`~/.ssh/config`**

```bash
Host lp123
    User git 
    Hostname <git_host>
    IdentityFile ~/.ssh/id_rsa_work.pub

Host salt_master
    User dong
    Hostname <salt_ip>

Host devmam_db
    User root
    Hostname <db_host>
    IdentityFile ~/.ssh/id_rsa_work.pub
    LocalForward 14331 <db_host>:1433

Host dev2
    User dong
    Hostname <dev_host2>
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
