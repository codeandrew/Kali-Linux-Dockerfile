# ================================================================
# Common Commands
# ================================================================

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory level
alias c='clear'                             # c:            Clear terminal display
alias ~="cd ~"                              # ~:            Go Home
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside

alias src='source ~/.profile'
alias pwdc='pwd | pbcopy'

export LC_ALL=en_US.UTF-8

# ================================================================
# Sytem administration commands
# ================================================================

alias ssc='sudo systemctl'
alias sc='systemctl'
alias scr='systemctl -t service -a --state running --no-page --no-legend'
alias scf='systemctl --failed | head -n -6 | tail -n -1'

alias hsg="history | grep "

# other
alias myip='curl -s http://ip-api.com'

# ================================================================
# Functions
# ================================================================

speedtest(){
   curl -s https://raw.githubusercontent.com/codeandrew/speedtest-cli/master/speedtest.py | python -
}

extract() {
    if [[ -z "$1" ]]; then
        # display usage if no parameters given
        echo "Usage: extract <archive file>"
        return 1
    else
        for n in "$@"; do
            if [[ -f "$n" ]]; then
                case "${n%,}" in
                    *.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar)
                                tar xvf "$n"       ;;
                    *.lzma)     unlzma ./"$n"      ;;
                    *.bz2)      bunzip2 ./"$n"     ;;
                    *.rar)      unrar x -ad ./"$n" ;;
                    *.gz)       gunzip ./"$n"      ;;
                    *.zip)      unzip ./"$n"       ;;
                    *.z)        uncompress ./"$n"  ;;
                    *.7z|*.arj|*.cab|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.rpm|*.udf|*.wim|*.xar)
                                7z x ./"$n"        ;;
                    *.xz)       unxz ./"$n"        ;;
                    *.exe)      cabextract ./"$n"  ;;
                    *)
                echo "extract: '$n' - unknown archive format"
                return 1
                esac
            else
                echo "'$n' - file does not exist"
                return 1
            fi
        done
    fi
}

# ================================================================
# Security Commands
# ================================================================

alias scan="nmap -T4 -F 192.168.100.1/24" # Light Scan


