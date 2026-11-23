set -g fish_greeting ""

alias chrome='google-chrome-stable'
alias ls='eza --icons'   # Jika sudah instal eza (pengganti ls yang berwarna)
alias fetch='fastfetch'   # Cek spek sistem ala Caelestia
alias conf='cd ~/.config' # Cepat masuk ke folder config

if test -f ~/.local/state/caelestia/sequences.txt
    cat ~/.local/state/caelestia/sequences.txt
end


# Added by Antigravity CLI installer
set -gx PATH "/home/nestia_dev/.local/bin" $PATH
source ~/.config/fish/config-linux.fish

function fish_greeting
    if status is-interactive; and type -q fastfetch
        fastfetch
    end
end
