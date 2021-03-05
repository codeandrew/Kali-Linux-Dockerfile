#!/bin/bash
export TARGET=""

bigline(){
   echo; echo
   echo #==============================================
}

smallline(){
   echo #----------------------------------------------
   echo; echo
}
clear

#==============================================
# Email and Company Profile Info Gathering
#==============================================

theHarvester -d $TARGET -l 300 -b linkedin 
theHarvester -d $TARGET -l 300 -b google

#==============================================
# Scanning Infrasctructure
#==============================================

bigline
echo "Scanning Network"
nmap $TARGET
nmap -T4 -v -A -Pn $TARGET

