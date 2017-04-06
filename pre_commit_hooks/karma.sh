#!/bin/bash
red="\033[0;31m"
yellow="\033[1;33m"
green="\033[1;32m"
reset="\033[0m"

cd client/
npm test
testResults=$?
cd ../


# now if tests failed let's abort commit by "exit 1"
# if not, congratulations, commit is now in Git
if [ $testResults -ne 0 ]
 then
    echo "${red}\n Tests FAILED\n\n commit ABORTED${reset}"
    exit 1
else
    echo "${green}\nOK\n${reset}"
fi
exit 0