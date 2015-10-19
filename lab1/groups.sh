#!/bin/bash

declare -A MY_GROUPS
declare -A BASIC_PRIVILEGES
declare -A ADDITIONAL_READ_PRIVILEGES

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

