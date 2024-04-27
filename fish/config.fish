if status is-interactive
    # Commands to run in interactive sessions can go here
end
set PATH "$PATH":"$HOME/.local/scripts/"
bind \cf "tmux-sessionizer"

### Aliases ###

    alias ls='eza --icons=always -a --no-permissions'
    alias ll='eza --long --tree --level=2 | fzf'
		alias snv='sudo -E -s nvim'
		alias cat='bat --theme catppuccin_mocha'
		alias startxmp='sudo /opt/lampp/./xampp start'
		alias stopxmp='sudo /opt/lampp/./xampp stop'
		alias restartxmp='sudo /opt/lampp/./xampp restart'
		alias tshift='sudo -E timeshift-launcher'
### Debian ###
    alias install='sudo apt install --no-install-recommends'
    alias update='sudo apt update'
    alias upgrade='sudo apt update && sudo apt upgrade'
    alias listup='sudo apt --list-upgradable'
    alias search='sudo apt-cache search'
    alias remove='sudo apt remove'
    alias purge='sudo apt purge'
    alias autoremove='sudo apt autoremove'
### Arch ###
	  alias pac='sudo pacman'
		alias orphan='sudo pacman -Qtd'
		alias foreign='sudo pacman -Qm'
		alias rmall='sudo pacman -Rsunc $(pacman -Qtdq)'

    ### Starship ###
		     starship init fish | source
		     zoxide init fish | source

 set -U fish_greeting
 set -gx NVM_DIR $HOME/.nvm
 source ~/.asdf/asdf.fish