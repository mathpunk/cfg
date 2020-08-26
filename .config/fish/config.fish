alias cfg='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'

# config
set fish_greeting ""
fish_vi_key_bindings
set -Ux EDITOR emacs-opener

# editor
alias e='emacs-opener' # HMMM
alias ec="/usr/bin/emacsclient -ct"
alias es="/usr/bin/emacs --daemon"

# git
abbr gs "git status"
abbr gb "git branch"
abbr gf "git fetch"
abbr gco "git checkout"
abbr gcb "git checkout -b"
abbr gl "git log --oneline --decorate --graph"
abbr ga "git add"
abbr gc "git commit"
abbr gcm "git commit -m"

# tw
abbr t "task"
abbr ta "task add"
abbr tl "task list"

# other
abbr yt "youtube-dl"


# Path
# =======
set PATH $PATH $HOME/.nvm/versions/node/v10.10.0/bin/
export NODE_OPTIONS="--max-old-space-size=3072" # lg
set PATH $PATH ~/system/bin
set PATH $PATH ~/.local/bin
# set PATH $PATH (ruby -e 'print Gem.user_dir')
# set PATH $PATH ~/.node_modules/bin
# export npm_config_prefix=~/.node_modules

# Neo4j
export NEO4J_HOME=/usr/local/opt/neo4j
set PATH $PATH /usr/local/opt/neo4j/bin

# Leiningen
set PATH $PATH /opt/leiningen

# Hardware
set PATH $PATH /opt/arduino

# Music Creation
export SOUND_FONT=/usr/share/soundfonts/FluidR3_GM.sf2

# Rust Binaries
set PATH $PATH $HOME/.cargo/bin



# Protractor
abbr pro "./node_modules/protractor/bin/protractor e2e/conf.js "

# Docker
alias dockerstop='docker stop (docker ps -a -q)'
alias dockerrm='docker rm (docker ps -a -q)'
alias dockerrmi='docker rmi (docker images -a -q) -f'
alias dockerrmv="docker volume rm (docker volume ls -qf dangling=true)"


eval (direnv hook fish)

# SECRETS / ENV
# =================================
source ~/.secrets.sh
