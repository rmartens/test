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

send_update()
{
    curl --insecure -X POST -H 'Content-type: application/json' \
    -d @- ${SLACK_WEB_HOOK} <<EOF
{
  "text": "Test Ended: DG1000 ${TEC_VER_DOT} (${BUILD_NUMBER})"
}
EOF
}


main()
{
    # Check if SLACK_WEB_HOOK is set and not empty
    if [ -z "${SLACK_WEB_HOOK}" ]; then
        echo "Warning: SLACK_WEB_HOOK is not set or is empty. Skipping Slack update."
    else
        # SLACK_WEB_HOOK exists, so call send_update
        send_update
    fi
}

main

exit 0