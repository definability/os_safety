#!/bin/bash

source groups.sh
source users.sh

for group in "${!MY_GROUPS[@]}"
do
    sudo addgroup $group
    for user in `echo "${MY_GROUPS["$group"]}" | sed "s/ /\\n/g"`
    do
        for user_params in "${MY_USERS["$user"]}"
        do
            echo "Creating user $user"
            sudo useradd -g $group $user_params -d /home/$user -m $user
        done
    done
done

