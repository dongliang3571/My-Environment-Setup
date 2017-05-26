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
    "auto_indent": true,
    "auto_match_enabled": true,
    "caret_style": "solid",
    "color_scheme": "Packages/Theme - Flatland/Flatland Dark.tmTheme",
    "detect_indentation": true,
    "draw_indent_guides": true,
    "font_size": 13,
    "highlight_line": true,
    "highlight_modified_tabs": true,
    "ignored_packages":
    [
        "Vintage"
    ],
    "smart_indent": true,
    "tab_size": 4,
    "theme": "Flatland Dark.sublime-theme",
    "translate_tabs_to_spaces": true,
    "trim_automatic_white_space": true,
    "update_check": false,
    "use_simple_full_screen": true,
    "use_tab_stops": true,
    "rulers": [80],
    "draw_white_space": "all"
}
```
