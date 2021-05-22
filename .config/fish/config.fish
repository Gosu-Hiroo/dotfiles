fish_vi_key_bindings
#fish_default_key_bindings

set PATH ~/.cargo/bin $PATH
set PATH /home/hiroo/Downloads/nvim.appimage $PATH
set PATH /home/hiroo/.local/bin $PATH
set -Ux NVIMRC /home/hiroo/.config/nvim/init.vim
set -Ux FISHRC /home/hiroo/.config/fish/config.fish
set -Ux _JAVA_AWT_WM_NONREPARENTING 1

alias vim 'nvim'
alias bat 'batcat'
alias fd 'fdfind'

# Changing "ls" to "exa"
alias ls 'exa -al --color=always --group-directories-first' # my preferred listing
alias la 'exa -a --color=always --group-directories-first'  # all files and dirs
alias ll 'exa -l --color=always --group-directories-first'  # long format
alias lt 'exa -aT --color=always --group-directories-first' # tree listing
alias l. 'exa -a | egrep "^\."'

alias cp 'cp -i'
alias mv 'mv -i'
alias rm 'rm -i'
alias grep 'grep --color=auto'
alias df 'df -h'
alias free 'free -m'
alias tb="nc termbin.com 9999"
alias c="clear"
alias h="history"

function cd
    builtin cd $argv; and ls
end

function ex
    switch $argv
        case '*.tar.bz2'
            tar xjf $argv
        case '*.tar.gz'
            tar xzf $argv
        case '*.bz2'
            bunzip2 $argv
        case '*.rar'
            unrar x $argv
        case '*.gz'
            gunzip $argv
        case '*.tar'
            tar xf $argv
        case '*.tbz2'
            tar xjf $argv
        case '*.tgz'
            tar xzf $argv
        case '*.zip'
            unzip $argv
        case '*.Z'
            uncompress $argv
        case '*.7z'
            7z x $argv
        case '*.deb'
            ar x $argv
        case '*.tar.xz'
            tar xf $argv
        case '*.tar.zst'
            zstd -d $argv
        case '*'
            echo "'$argv' cannot be extracted via ex()" ;;
    end
end


alias signout 'gnome-session-quit --no-prompt'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
