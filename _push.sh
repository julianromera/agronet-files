#!/bin/sh


if [ "x$1" = "x" ];then
        echo "$0 <commit message>"
        exit 0
fi

sudo git add .
sudo git commit -a -m "$1"
sudo git pull origin master && sudo git push origin --all

