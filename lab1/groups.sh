#!/bin/bash

declare -A MY_GROUPS
declare -A BASIC_PRIVILEGES
declare -A ADDITIONAL_READ_PRIVILEGES

declare -A MY_USERS

MY_GROUPS=(
["alfa"]="w_gromov"
["beta"]="k_beglov b_rebrov n_kalinina"
["nabla"]="i_frolov d_lavrov e_ivanova"
["sigma"]="t_uporov m_kruglov r_klinova"
)

BASIC_PRIVILEGES=(
["alfa"]="0700"
["beta"]="0700"
["nabla"]="0750"
["sigma"]="0755"
)

ADDITIONAL_READ_PRIVILEGES=(
["alfa"]=""
["beta"]=""
["nabla"]="beta"
["sigma"]="beta nabla"
)

MY_USERS=(
# alfa
["w_gromov"]="-p $(perl -e 'print crypt("$ARGV[0]", "ololo")' "123!@#][p}{P")"
# beta
["k_beglov"]="-e `date -d '+45 days' +%Y-%m-%d` -p $(perl -e 'print crypt("$ARGV[0]", "ololo")' "abcdefgh")"
["b_rebrov"]="-e `date -d '+12 days' +%Y-%m-%d` -p $(perl -e 'print crypt("$ARGV[0]", "ololo")' "1b3d5f7h")"
["n_kalinina"]="-e `date -d '+30 days' +%Y-%m-%d` -p $(perl -e 'print crypt("$ARGV[0]", "ololo")' "a2c4e6g8")"
# nabla
["i_frolov"]="-e `date -d '+10 days' +%Y-%m-%d` -p $(perl -e 'print crypt("$ARGV[0]", "ololo")' "qwertyas")"
["d_lavrov"]="-e `date -d '+60 days' +%Y-%m-%d` -p $(perl -e 'print crypt("$ARGV[0]", "ololo")' "asqwerty")"
["e_ivanova"]="-e `date -d '+30 days' +%Y-%m-%d` -p $(perl -e 'print crypt("$ARGV[0]", "ololo")' "12345678")"
# sigma
["t_uporov"]="-e `date -d '+15 days' +%Y-%m-%d` -p $(perl -e 'print crypt("$ARGV[0]", "ololo")' "ertyuiop")"
["m_kruglov"]="-e `date -d '+30 days' +%Y-%m-%d` -p $(perl -e 'print crypt("$ARGV[0]", "ololo")' "poiuytre")"
["r_klinova"]="-e `date -d '+90 days' +%Y-%m-%d` -p $(perl -e 'print crypt("$ARGV[0]", "ololo")' "12345678")"
)

ADMINISTRATION="w_gromov"

