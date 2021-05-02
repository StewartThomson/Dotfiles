if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end


function fish_greeting
	fortune | cowsay -f bud-frogs | lolcat
end

fish_vi_key_bindings

### Aliases
alias vim="nvim"
alias vi="nvim"
alias ll="ls -l"
alias la="ls -a"

source ~/.cache/wal/colors.fish
cat ~/.config/wpg/sequences &

### Environment
#### Path
set -gx PATH $HOME/.cargo/bin /var/lib/flatpak/exports/bin $PATH

#### XDG System
set -gx XDG_DATA_DIRS /usr/share /usr/local/share
set -gx XDG_CONFIG_DIRS /etc/xdg

#### XDG User
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_DESKTOP_DIR $HOME/Desktop
set -gx XDG_DOWNLOAD_DIR $HOME/Downloads
set -gx XDG_DOCUMENTS_DIR $HOME/Documents
set -gx XDG_MUSIC_DIR $HOME/Music
set -gx XDG_PICTURES_DIR $HOME/Pictures
set -gx XDG_VIDEOS_DIR $HOME/Videos

#### Applications
set -gx SPACEFISH_EXIT_CODE_SHOW true
set -gx NVM_DIR $XDG_DATA_HOME/nvm
set -gx RUSTUP_HOME $XDG_DATA_HOME/rustup
set -gx CARGO_HOME $XDG_DATA_HOME/cargo
set -gx DOCKER_CONFIG $XDG_CONFIG_HOME/docker
set -gx GNUPGHOME $XDG_CONFIG_HOME/gnupg
set -gx AWS_SHARED_CREDENTIALS_FILE $XDG_CONFIG_HOME/aws/credentials
set -gx AWS_CONFIG_FILE $XDG_CONFIG_HOME/aws/config
set -gx PASSWORD_STORE_DIR $XDG_DATA_HOME/pass
