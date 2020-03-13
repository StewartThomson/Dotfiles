if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set -gx PATH $HOME/.cargo/bin $PATH

set -gx SPACEFISH_EXIT_CODE_SHOW true

function fish_greeting
	fortune | cowsay -f bud-frogs
end
