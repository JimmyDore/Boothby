#!/bin/bash
if [ "$TRAVIS_BRANCH" == "master" ]; then
    eval "$(ssh-agent -s)"
    #- chmod 600 .travis/deploy_key.pem
    #- ssh-add .travis/deploy_key.pem
    git remote add production ec2-user@ec2-35-180-135-203.eu-west-3.compute.amazonaws.com:project.git
    git push production master
fi