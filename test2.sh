#!/bin/sh
set -e # errors
set -x # debugging
set -u # exit if using undeclared variable

# start
echo "******************************************************"
echo "******************************************************"
echo "************* START $0 **************************"

# get location of script file before starting
#DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
#echo "DIR=$DIR"

# add shared functions
# source $DIR/sharedFunctions


main()
{
    echo "main"

}

main

exit 0