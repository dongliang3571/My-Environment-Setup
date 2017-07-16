# My-Environment-Setup

## Softwares you should install

- [iTerm2](https://www.iterm2.com/) - Replacement for Mac default terminal
- [homebrew](https://brew.sh/) - The missing package manager for macOS
- [pyenv](https://github.com/pyenv/pyenv) - Simple Python Version Management
- [go2shell](http://zipzapmac.com/go2shell) - Opens a terminal window to the current directory in Finder
- [gitx](https://rowanj.github.io/gitx/) - GUI for the git version-control system
- [sublime](https://www.sublimetext.com/) - Text editor for code

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

# Turn on iTerm's options
if [ $TERM_PROGRAM = "iTerm.app" ]; then
  osascript -e 'tell application "System Events" to keystroke "e" using {command down, shift down}' # turn on timestamp for iTerm
  osascript -e 'tell application "System Events" to keystroke ";" using {command down, option down}' # turn on cursor guide for iTerm
fi

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
## iTerm2 profile

```json
{
  "Use Non-ASCII Font" : false,
  "Tags" : [

  ],
  "Ansi 12 Color" : {
    "Green Component" : 0.3333333432674408,
    "Red Component" : 0.3333333432674408,
    "Blue Component" : 1
  },
  "Ansi 7 Color" : {
    "Green Component" : 0.7333333492279053,
    "Red Component" : 0.7333333492279053,
    "Blue Component" : 0.7333333492279053
  },
  "Ansi 8 Color" : {
    "Green Component" : 0.3333333432674408,
    "Red Component" : 0.3333333432674408,
    "Blue Component" : 0.3333333432674408
  },
  "Bold Color" : {
    "Green Component" : 1,
    "Red Component" : 1,
    "Blue Component" : 1
  },
  "Ansi 9 Color" : {
    "Green Component" : 0.3333333432674408,
    "Red Component" : 1,
    "Blue Component" : 0.3333333432674408
  },
  "Ansi 2 Color" : {
    "Green Component" : 0.7333333492279053,
    "Red Component" : 0,
    "Blue Component" : 0
  },
  "Ansi 5 Color" : {
    "Green Component" : 0,
    "Red Component" : 0.7333333492279053,
    "Blue Component" : 0.7333333492279053
  },
  "Rows" : 80,
  "Default Bookmark" : "No",
  "AWDS Tab Option" : "No",
  "Non-ASCII Anti Aliased" : true,
  "Use Bright Bold" : true,
  "Ansi 10 Color" : {
    "Green Component" : 1,
    "Red Component" : 0.3333333432674408,
    "Blue Component" : 0.3333333432674408
  },
  "Ambiguous Double Width" : false,
  "AWDS Pane Option" : "No",
  "Jobs to Ignore" : [
    "rlogin",
    "ssh",
    "slogin",
    "telnet"
  ],
  "Ansi 15 Color" : {
    "Green Component" : 1,
    "Red Component" : 1,
    "Blue Component" : 1
  },
  "Foreground Color" : {
    "Green Component" : 0.7333333492279053,
    "Red Component" : 0.7333333492279053,
    "Blue Component" : 0.7333333492279053
  },
  "Working Directory" : "\/Users\/Dong",
  "Blinking Cursor" : false,
  "AWDS Window Option" : "No",
  "Sync Title" : false,
  "Prompt Before Closing 2" : false,
  "BM Growl" : true,
  "Command" : "",
  "Description" : "Default",
  "AWDS Pane Directory" : "",
  "Disable Window Resizing" : true,
  "Screen" : -1,
  "Selection Color" : {
    "Green Component" : 0.8353000283241272,
    "Red Component" : 0.7098000049591064,
    "Blue Component" : 1
  },
  "Mouse Reporting" : true,
  "AWDS Window Directory" : "",
  "Columns" : 180,
  "Idle Code" : 0,
  "Ansi 13 Color" : {
    "Green Component" : 0.3333333432674408,
    "Red Component" : 1,
    "Blue Component" : 1
  },
  "Custom Command" : "No",
  "ASCII Anti Aliased" : true,
  "Non Ascii Font" : "Monaco 12",
  "Vertical Spacing" : 1,
  "Use Bold Font" : true,
  "Option Key Sends" : 2,
  "Selected Text Color" : {
    "Green Component" : 0,
    "Red Component" : 0,
    "Blue Component" : 0
  },
  "Background Color" : {
    "Green Component" : 0,
    "Red Component" : 0,
    "Blue Component" : 0
  },
  "Character Encoding" : 4,
  "Ansi 11 Color" : {
    "Green Component" : 1,
    "Red Component" : 1,
    "Blue Component" : 0.3333333432674408
  },
  "Use Italic Font" : true,
  "Unlimited Scrollback" : true,
  "Keyboard Map" : {
    "0xf700-0x260000" : {
      "Text" : "[1;6A",
      "Action" : 10
    },
    "0x37-0x40000" : {
      "Text" : "0x1f",
      "Action" : 11
    },
    "0x32-0x40000" : {
      "Text" : "0x00",
      "Action" : 11
    },
    "0xf709-0x20000" : {
      "Text" : "[17;2~",
      "Action" : 10
    },
    "0xf70c-0x20000" : {
      "Text" : "[20;2~",
      "Action" : 10
    },
    "0xf729-0x20000" : {
      "Text" : "[1;2H",
      "Action" : 10
    },
    "0xf72b-0x40000" : {
      "Text" : "[1;5F",
      "Action" : 10
    },
    "0xf705-0x20000" : {
      "Text" : "[1;2Q",
      "Action" : 10
    },
    "0xf703-0x260000" : {
      "Text" : "[1;6C",
      "Action" : 10
    },
    "0xf700-0x220000" : {
      "Text" : "[1;2A",
      "Action" : 10
    },
    "0xf701-0x280000" : {
      "Text" : "0x1b 0x1b 0x5b 0x42",
      "Action" : 11
    },
    "0x38-0x40000" : {
      "Text" : "0x7f",
      "Action" : 11
    },
    "0x33-0x40000" : {
      "Text" : "0x1b",
      "Action" : 11
    },
    "0xf703-0x220000" : {
      "Text" : "[1;2C",
      "Action" : 10
    },
    "0xf701-0x240000" : {
      "Text" : "[1;5B",
      "Action" : 10
    },
    "0xf70d-0x20000" : {
      "Text" : "[21;2~",
      "Action" : 10
    },
    "0xf702-0x260000" : {
      "Text" : "[1;6D",
      "Action" : 10
    },
    "0xf729-0x40000" : {
      "Text" : "[1;5H",
      "Action" : 10
    },
    "0xf706-0x20000" : {
      "Text" : "[1;2R",
      "Action" : 10
    },
    "0x34-0x40000" : {
      "Text" : "0x1c",
      "Action" : 11
    },
    "0xf700-0x280000" : {
      "Text" : "0x1b 0x1b 0x5b 0x41",
      "Action" : 11
    },
    "0x2d-0x40000" : {
      "Text" : "0x1f",
      "Action" : 11
    },
    "0xf70e-0x20000" : {
      "Text" : "[23;2~",
      "Action" : 10
    },
    "0xf702-0x220000" : {
      "Text" : "[1;2D",
      "Action" : 10
    },
    "0xf703-0x280000" : {
      "Text" : "0x1b 0x1b 0x5b 0x43",
      "Action" : 11
    },
    "0xf700-0x240000" : {
      "Text" : "[1;5A",
      "Action" : 10
    },
    "0xf707-0x20000" : {
      "Text" : "[1;2S",
      "Action" : 10
    },
    "0xf70a-0x20000" : {
      "Text" : "[18;2~",
      "Action" : 10
    },
    "0x35-0x40000" : {
      "Text" : "0x1d",
      "Action" : 11
    },
    "0xf70f-0x20000" : {
      "Text" : "[24;2~",
      "Action" : 10
    },
    "0xf703-0x240000" : {
      "Text" : "[1;5C",
      "Action" : 10
    },
    "0xf701-0x260000" : {
      "Text" : "[1;6B",
      "Action" : 10
    },
    "0xf702-0x280000" : {
      "Text" : "0x1b 0x1b 0x5b 0x44",
      "Action" : 11
    },
    "0xf72b-0x20000" : {
      "Text" : "[1;2F",
      "Action" : 10
    },
    "0x36-0x40000" : {
      "Text" : "0x1e",
      "Action" : 11
    },
    "0xf708-0x20000" : {
      "Text" : "[15;2~",
      "Action" : 10
    },
    "0xf701-0x220000" : {
      "Text" : "[1;2B",
      "Action" : 10
    },
    "0xf70b-0x20000" : {
      "Text" : "[19;2~",
      "Action" : 10
    },
    "0xf702-0x240000" : {
      "Text" : "[1;5D",
      "Action" : 10
    },
    "0xf704-0x20000" : {
      "Text" : "[1;2P",
      "Action" : 10
    }
  },
  "Window Type" : 0,
  "Blink Allowed" : false,
  "Blur" : false,
  "Scrollback Lines" : 1000,
  "Send Code When Idle" : false,
  "Close Sessions On End" : true,
  "Terminal Type" : "xterm-256color",
  "Visual Bell" : true,
  "Flashing Bell" : false,
  "Silence Bell" : false,
  "Ansi 14 Color" : {
    "Green Component" : 1,
    "Red Component" : 0.3333333432674408,
    "Blue Component" : 1
  },
  "Background Image Is Tiled" : false,
  "Name" : "Default",
  "Cursor Text Color" : {
    "Green Component" : 1,
    "Red Component" : 1,
    "Blue Component" : 1
  },
  "Shortcut" : "",
  "Cursor Color" : {
    "Green Component" : 0.7333333492279053,
    "Red Component" : 0.7333333492279053,
    "Blue Component" : 0.7333333492279053
  },
  "Ansi 0 Color" : {
    "Green Component" : 0,
    "Red Component" : 0,
    "Blue Component" : 0
  },
  "Ansi 1 Color" : {
    "Green Component" : 0,
    "Red Component" : 0.7333333492279053,
    "Blue Component" : 0
  },
  "Custom Directory" : "Recycle",
  "Ansi 3 Color" : {
    "Green Component" : 0.7333333492279053,
    "Red Component" : 0.7333333492279053,
    "Blue Component" : 0
  },
  "Guid" : "B93E9114-EE7D-4E4C-B857-2BD2EA2BA098",
  "Horizontal Spacing" : 1,
  "Ansi 6 Color" : {
    "Green Component" : 0.7333333492279053,
    "Red Component" : 0,
    "Blue Component" : 0.7333333492279053
  },
  "Transparency" : 0,
  "AWDS Tab Directory" : "",
  "Normal Font" : "Monaco 12",
  "Ansi 4 Color" : {
    "Green Component" : 0,
    "Red Component" : 0,
    "Blue Component" : 0.7333333492279053
  },
  "Right Option Key Sends" : 0
}
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
