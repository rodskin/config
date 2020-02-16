alias vi="nvim"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
if [[ "$(ls --version >/dev/null 2>&1 && echo '1' || echo '0')" == "1" ]]; then
    if [[ "$(ls --group-directories-first /tmp >/dev/null 2>&1 && echo '1' || echo '0')" == "1" ]]; then
        alias ll="ls -alh --color=auto --group-directories-first "
    else
        alias ll="ls -alh --color=auto "
    fi
else
    alias ll="ls -alhG "
fi
alias git="git -c color.ui=auto"
alias gitst="git status --short"
alias gitstu="git status --short -uno"
alias gitfa="git fetch --all"
alias gitpure="git pull --rebase=preserve"
alias gitmerge="git merge --no-ff"
alias ag="ag -Us --ignore='*.min.js' --ignore='*.min.css' --ignore='/cache/' --ignore='/tmp/' "
alias grep="grep --color"
# special functions
alias curdate='date +%Y%m%d%H%M%S'
alias generate_password="openssl rand -base64 37 | cut -c1-16"
alias generate_strong_password="head -n 999 /dev/urandom | grep -ao '[[:graph:]]' | tr -d '\n' | grep -o '^.\{32\}' | head -n 1"
function monip() { echo "# Private"; ALLIPS="$([ -x /bin/ip ] && ip a || /sbin/ifconfig -a)"; echo "$ALLIPS" | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}' | sed 's/\/[0-9]*//g' | sort | uniq; echo; echo "# Public"; dig +short myip.opendns.com @208.67.220.220; } # AKA @resolver1.opendns.com
function mesip() { ALLIPS="$([ -x /bin/ip ] && ip a || /sbin/ifconfig -a)"; echo "$ALLIPS" | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}' | sed 's/.*://g' | sed 's/\/[0-9]*//g' | sort | uniq | tr "\\n" " " | sed 's/ $//g' | sed 's/ /\\\|/g'; }
