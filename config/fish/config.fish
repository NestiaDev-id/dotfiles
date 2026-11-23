set -g fish_greeting ""

alias chrome='google-chrome-stable'
alias ls='eza --icons'   # Jika sudah instal eza (pengganti ls yang berwarna)
alias fetch='fastfetch'   # Cek spek sistem ala Caelestia
alias conf='cd ~/.config' # Cepat masuk ke folder config

if type -q caelestia
    caelestia shell --init-fish | source
end


# Added by Antigravity CLI installer
set -gx PATH "/home/nestia_dev/.local/bin" $PATH
source ~/.config/fish/config-linux.fish
