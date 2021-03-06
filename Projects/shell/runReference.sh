#/bin/bash
###################################################
## FILENAME:    runReference.sh
## AUTHOR:      Jimmy Lin (u5223173) 
## DATE:        2013-09-19
## DESCRIPTION: 
##     Run all the scripts for mshref         
##
###################################################
## Edited by MacVim
## Documentation autogenerated by snippet
###################################################

dir="."
mkdir $dir
mshRefOut="./$dir/TraceMSHREF.txt"
touch $mshRefOut
rm -f $mshRefOut

## loop through all trace files
for i in {1..16}
do
    ## trace output for provide reference program ./mshref
    echo " " >> $mshRefOut
    echo "###################################################" >> $mshRefOut
    echo "### For Trace Test $i:" >> $mshRefOut
    echo "###################################################" >> $mshRefOut
    if [ $i -lt 10 ]
    then
        make rtest0$i >> $mshRefOut
    else
        make rtest$i >> $mshRefOut
    fi
    echo " " >> $mshRefOut
done 

echo "The trace for msh reference program done.."
