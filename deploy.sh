#!/bin/bash

#BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`

#if [ "$BRANCH" != 'master' ]; then
#        echo "You need to be in the master branch."
#        exit 1;
#fi

echo "Deploying to q42.nl..."
echo
mrt deploy q42.nl < password.txt
echo "Deploying to q42.com..."
echo
mrt deploy q42.com < password.txt
echo "Done."