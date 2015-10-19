#!/bin/bash

source groups.sh

for group in "${!MY_GROUPS[@]}"
do
    for user in `echo "${MY_GROUPS["$group"]}" | sed "s/ /\\n/g"`
    do
        for user_params in "${MY_USERS["$user"]}"
        do
            echo "Deleting user $user"
            sudo userdel -r $user
        done
    done
    sudo delgroup $group
done

