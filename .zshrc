skip_global_compinit=1

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"

zinit for \
    wait lucid \
  zsh-users/zsh-completions

zinit for \
    wait lucid \
    atload"_zsh_autosuggest_start" \
  zsh-users/zsh-autosuggestions

zinit for \
    wait lucid \
  Aloxaf/fzf-tab

zinit for \
    wait lucid \
  zdharma-continuum/history-search-multi-word

zinit for \
    as"command" \
    from"gh-r" \
    atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
    atpull"%atclone" \
    src"init.zsh" \
  starship/starship

zinit for \
    wait lucid \
    atload"zicompinit; zicdreplay" \
  zdharma-continuum/fast-syntax-highlighting

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

eval_if_exists() {
    if command -v $1 >/dev/null 2>&1; then
        eval "$($@)"
    fi
}

cpr() {
  rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 "$@"
}
mvr() {
  rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 --remove-source-files "$@"
}

typeset -A aliases
aliases=(
    [ls]="eza --icons=always"
    [cat]="bat"
    [grep]="rg"
    [find]="fd"
    [dd]="dd_rescue"
    [df]="duf"
    [du]="dust"
    [sed]="sad"
    [rsync]="~/.local/scripts/rsync.sh"
    [mv]="mvr"
    [cp]="cpr"
    [lg]="lazygit"
    [ld]="lazydocker"
    [ld]="lazyollama"
    [top]="htop"
    [ping]="prettyping"
    [vim]="nvim"
    [vi]="nvim"
)

for alias_name alias_value in ${(kv)aliases}; do
    if command -v "$alias_value" >/dev/null 2>&1; then
        alias "$alias_name"="$alias_value"
    fi
done

export EDITOR="nvim"
export XDG_DATA_DIRS="$HOME/.nix-profile/share:$XDG_DATA_DIRS"
export GEM_HOME="$(gem env user_gemhome)"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="$PATH:$GEM_HOME/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.config/emacs/bin"
. /usr/share/nvm/init-nvm.sh

eval_if_exists fzf --zsh
eval_if_exists zoxide init --cmd cd zsh
eval_if_exists try init
