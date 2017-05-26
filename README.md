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
