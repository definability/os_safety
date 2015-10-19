#!/bin/bash

source groups.sh

for group in "${!MY_GROUPS[@]}"
do
    for user in `echo "${MY_GROUPS["$group"]}" | sed "s/ /\\n/g"`
    do
        echo "Set ${BASIC_PRIVILEGES["$group"]} for on /home/$user from $group"
        sudo chmod "${BASIC_PRIVILEGES["$group"]}" /home/$user
        for additional in `echo "${ADDITIONAL_READ_PRIVILEGES["$group"]}" | sed "s/ /\\n/g"`
        do
            echo "Set read privilege for $additional on /home/$user from $group"
            sudo setfacl -m "g:$group:r-x" /home/$user
        done
        for admin in `echo "$ADMINISTRATION" | sed "s/ /\\n/g"`
        do
            if [[ $ADMINISTRATION != *"$user"* ]]
            then
                echo "Set admin privilege for $admin on /home/$user from $group"
                sudo setfacl -m "u:$admin:rwx" /home/$user
            fi
        done
    done
done


