#!/bin/sh

# color config
set_ps1() {
    local EXIT_STATUS=$?

    local IS_CENTRAL=1;
    local IS_SINGLE_POINT=0;

    # misc
    local NO_COLOR='\e[0m' #disable any colors
    # regular colors
    local BLACK='\e[0;30m'
    local RED='\e[0;31m'
    local GREEN='\e[0;32m'
    local YELLOW='\e[0;33m'
    local BLUE='\e[0;34m'
    local MAGENTA='\e[0;35m'
    local CYAN='\e[0;36m'
    local WHITE='\e[0;37m'
    # emphasized (bolded) colors
    local EBLACK='\e[1;30m'
    local ERED='\e[1;31m'
    local EGREEN='\e[1;32m'
    local EYELLOW='\e[1;33m'
    local EBLUE='\e[1;34m'
    local EMAGENTA='\e[1;35m'
    local ECYAN='\e[1;36m'
    local EWHITE='\e[1;37m'
    # underlined colors
    local UBLACK='\e[4;30m'
    local URED='\e[4;31m'
    local UGREEN='\e[4;32m'
    local UYELLOW='\e[4;33m'
    local UBLUE='\e[4;34m'
    local UMAGENTA='\e[4;35m'
    local UCYAN='\e[4;36m'
    local UWHITE='\e[4;37m'
    # background colors
    local BBLACK='\e[40m'
    local BRED='\e[41m'
    local BGREEN='\e[42m'
    local BYELLOW='\e[43m'
    local BBLUE='\e[44m'
    local BMAGENTA='\e[45m'
    local BCYAN='\e[46m'
    local BWHITE='\e[47m'
    if [[ ${EXIT_STATUS} == 0 ]]; then
        EXIT_STATUS="\\[${BLUE}\\]\$(printf '%3d' ${EXIT_STATUS})\\[${NO_COLOR}\\]"
    else
        EXIT_STATUS="\\[${RED}\\]\$(printf '%3d' ${EXIT_STATUS})\\[${NO_COLOR}\\]"
    fi

    local PS1_USER
    if [[ ${EUID} == 0 ]] ; then
        PS1_USER="\\[${ERED}\\]\\u\\[${NO_COLOR}\\]"
    else
        PS1_USER="\\[${EGREEN}\\]\\u\\[${NO_COLOR}\\]"
    fi
    local PS1_HOST="AliYun"
    if [[ ${IS_SINGLE_POINT} == 1 ]]; then
        PS1_HOST="\\[${ERED}\\]${PS1_HOST}\\[${NO_COLOR}\\]"
    elif [[ ${IS_CENTRAL} == 1 ]]; then
        PS1_HOST="\\[${EYELLOW}\\]${PS1_HOST}\\[${NO_COLOR}\\]"
    else
        PS1_HOST="\\[${EGREEN}\\]${PS1_HOST}\\[${NO_COLOR}\\]"
    fi
    PS1_HOST=$PS1_HOST

    echo -ne "[${PS1_USER}@${PS1_HOST} \\[${EBLUE}\\]\\W\\[${NO_COLOR}\\]]\\\$ "
}

PS1=`set_ps1`

