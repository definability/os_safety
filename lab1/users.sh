#!/bin/bash

declare -A MY_USERS

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

