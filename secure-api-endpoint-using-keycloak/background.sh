#!/bin/bash
mkdir ./project

while :
do
    if ! [[ `lsof | grep filename.ext` ]]
    then
        curl https://64.media.tumblr.com/3487d11245609f74cb81c7e67c49bac5/tumblr_npnnnwNWJq1qc4uvwo1_500.jpg | display
    fi
    sleep 1
done
echo "done"
