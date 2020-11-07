# My-Environment-Setup

## For Mac

### Softwares you should install

- [iTerm2](https://www.iterm2.com/) - Replacement for Mac default terminal
    - create `~/Library/Application Support/iTerm2/DynamicProfiles/profiles` and copy paste `iterm2_profile`
- [homebrew](https://brew.sh/) - The missing package manager for macOS
- [pyenv](https://github.com/pyenv/pyenv) - Simple Python Version Management
- [go2shell](http://zipzapmac.com/go2shell) - Opens a terminal window to the current directory in Finder
- [gitx](https://rowanj.github.io/gitx/) - GUI for the git version-control system
- [sublime](https://www.sublimetext.com/) - Text editor for code
    - Open `Preference -> Settings - User` and copy paste `sublime_profile` 
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) - Replace Bash
    - theme: https://github.com/romkatv/powerlevel10k#how-do-i-enable-instant-prompt
- [bit](https://github.com/chriswalz/bit) - git cli enhancement

- vim
    - Open `~/.vim` and copy paste `.vim`
    
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


## For Windows

Install Linux subsystem

https://www.howtogeek.com/261575/how-to-run-graphical-linux-desktop-applications-from-windows-10s-bash-shell/

**ConEmu** https://conemu.github.io/

**AutoHotKey** https://autohotkey.com/
