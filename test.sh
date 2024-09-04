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
echo "SLACK_WEB_HOOK=$SLACK_WEB_HOOK"
echo "TEC_VER_DOT=$TEC_VER_DOT"
echo "BUILD_NUMBER=$BUILD_NUMBER"

# add shared functions
# source $DIR/sharedFunctions

main()
{
    ./slack_message "Test Ended"
}

main

exit 1