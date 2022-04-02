#!/bin/bash

RED=$(printf '\e[31m')
WHITE=$(printf '\e[37m')
GREEN=$(printf '\e[32m')
CYANBG=$(printf '\e[46m')
CYAN=$(printf '\e[36m')
BLUEBG=$(printf '\e[44m')
MAGENTABG=$(printf '\e[45m')
ORANGEBG=$(printf '\e[43m')
ORANGE=$(printf '\e[33m')
# Switch to normal color evry time
NC=$(printf '\e[0m')

function get_pkg() {
    # Will return system's package manager
    if which apt >/dev/null 2>&1; then
        echo -n 'apt'
    else
        echo -n 'yum'
    fi
}

function install_req() {
    # Will Install requirements
    PKG=$(get_pkg)

    if ! which figlet >/dev/null 2>&1; then
        echo -n "${GREEN}Installing figlet..${NC}"
        sudo ${PKG} install -y figlet >/dev/null 2>&1
        printf '\n'
    fi
    if ! which python3 >/dev/null 2>&1; then
        echo "${GREEN}Installing python..${NC}"
        sudo ${PKG} install -y python3 >/dev/null 2>&1
    fi
}

# Function that print in slow mode
function slow_print() {
    local t=$1
    local check=$(printf '\e')
    local count=0
    while IFS= read -n1 c; do
        if [[ $c = '-' ]]; then
            echo -n '-'
        else
            printf "$c"
        fi
        if [[ $count -eq 0 ]]; then
            if ! [[ $c =~ ${check} ]]; then
                sleep ${t}
            else
                ((count++))
            fi
        elif [[ $count -eq 5 ]]; then
            count=0
        else
            ((count++))
        fi
    done <<<"$2"
}

# Install requirements (if not already)
install_req

# Print Banner in Orange
printf "${ORANGE}"
figlet "LEARN  LINUX"
printf "${NC}"

echo -e "${RED}created by Travon ${NC}\n"

read -p "Enter your name : " name
printf "\n"
slow_print '0.06' "Welcome ${GREEN}$name${NC}! "
sleep 1
printf '\n\n'

slow_print '0.06' "I've  been waiting for you ${GREEN}$name${NC}! "
sleep 1
printf '\n\n'

slow_print '0.06' "Now let start... "
sleep 1
printf '\n\n'

slow_print '0.06' "What is ${RED}LINUX${NC} "
slow_print 1 '???'
printf '\n\n'

slow_print '0.06' "Well just like Windows and Mac OS, and IOS "
sleep 0.5
printf '\n\n'
slow_print '0.06' "${RED}Linux${NC} is an operating system "
sleep 1
printf '\n\n'

slow_print '0.06' "In fact, one of the most popular platforms on the planet "
printf '\n'
slow_print '0.06' "Your Andriod phone is powered by ${RED}LINUX${NC} "
sleep 1
printf '\n\n'

slow_print '0.06' "Now let break everything down"
sleep 1
printf '\n\n'

slow_print '0.06' "An operating system is software that manages all of the hardware resources "
printf '\n'
slow_print '0.06' "which is associated with your desktop or laptop "
sleep 1
printf '\n\n'

slow_print '0.06' "Hope you got that..."
printf '\n\n'
slow_print '0.05' "+++++++++++++++++++++++++++++  "
printf '\r'
slow_print '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_print '0.05' "${ORANGE}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_print '0.05' "${GREEN}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_print '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'

printf "${GREEN}"
figlet "BYE ${name^^} !!!"
printf "${NC}"
