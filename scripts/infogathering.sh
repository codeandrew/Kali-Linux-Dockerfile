#!/bin/bash
export TARGET=""


#==============================================
# Email and Company Profile Info Gathering
#==============================================

theHarvester -d $TARGET -l 300 -b linkedin 
theHarvester -d $TARGET -l 300 -b google

