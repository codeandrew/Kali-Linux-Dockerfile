#!/bin/bash
# autorecon v1.0.0

export rhost=""
export dir_wordlist="/usr/share/seclists/Discovery/Web-Content/directory-list-2.3-medium.txt"

# Check if $rhost variable is empty
if [ -z "$rhost" ]; then
    echo "Please enter the value for \$rhost:"
    read rhost
fi

# Check if directory wordlist exists
if [ -f "$dir_wordlist" ]; then
    echo "File exists: $wordlist"
else
    echo "File does not exist: $dir_wordlist"
    find / -name "directory-list-*" 2>/dev/null
    echo "Please enter directory for wordlist"
    read dir_wordlist
fi


# Print the value of $rhost
echo "The value of \$rhost is: $rhost"

nmap -sSVC --min-rate 8888 -T4 $rhost -vv -oN nmap-$rhost.txt
nmap -sSV -T4 --script vuln --min-rate 8888 -vv -d -oN nmap-vuln.txt $rhost
gobuster dir -u $rhost -w $dir_wordlist -t 50 | tee gobuster-$rhost.txt
enum4linux -a $rhost | tee enum-$rhost.txt


#===========================================================================
# auto recon v2.0.0
#===========================================================================
#!/bin/bash

function run_nmap() {
    nmap -sSVC --min-rate 8888 -T4 $rhost -vv -oN "nmap-$rhost.txt"
    nmap -sSV -T4 --script vuln --min-rate 8888 -vv -d -oN "nmap-vuln-$rhost.txt" $rhost
}

function run_ffuf() {
    ffuf -u $rhost/FUZZ -w $dir_wordlist -t 50 | tee "ffuf-$rhost.txt"
}

function run_enum4linux() {
    enum4linux -a $rhost | tee "enum-$rhost.txt"
}

function run_amass() {
    amass enum -d $rhost | tee "amass-$rhost.txt"
}

function run_sublist3r() {
    sublist3r -d $rhost -o "sublist3r-$rhost.txt"
}

# Main function
function main() {
    read -p "Enter the remote host: " rhost
    dir_wordlist="/usr/share/seclists/Discovery/Web-Content/directory-list-2.3-medium.txt"

    if [ ! -f "$dir_wordlist" ]; then
        echo "Wordlist file does not exist: $dir_wordlist"
        read -p "Enter directory for wordlist: " dir_wordlist
    fi

    echo "Running recon on $rhost"
    run_nmap
    run_ffuf
    run_enum4linux
    run_amass
    run_sublist3r
}

main
