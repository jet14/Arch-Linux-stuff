#!/bin/sh
show_menu(){
    NORMAL=`echo "\033[m"`
    MENU=`echo "\033[36m"` #Blue
    NUMBER=`echo "\033[33m"` #yellow
    FGRED=`echo "\033[41m"`
    RED_TEXT=`echo "\033[31m"`
    ENTER_LINE=`echo "\033[33m"`
    echo -e "${MENU}*********************************************${NORMAL}"
    echo -e "${MENU}**${NUMBER} 0)${MENU}  Failed systemd services: ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 1)${MENU}  High priority errors in the systemd journal: ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 2)${MENU}  List installed unit files: ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 3)${MENU}  Show system status: ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 4)${MENU}  List running units: ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 5)${MENU}  Get current targets: ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 6)${MENU}  Remove archived journal files until the disk space they use falls below 100M: ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 7)${MENU}  Show all messages from this boot: ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 8)${MENU}  Force FSCK check on next boot:${NORMAL}"
    echo -e "${MENU}**${NUMBER} 9)${MENU}  ${NORMAL}"
    echo -e "${MENU}*********************************************${NORMAL}"
    echo -e "${ENTER_LINE}Please enter a menu option or ${RED_TEXT}enter to exit. ${NORMAL}"
    read -n1 opt 
    
}
function option_picked() {
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE=${@:-"${RESET}Error: No message passed"}
    echo -e "${COLOR}${MESSAGE}${RESET}"
}

clear
show_menu
while [ opt != '' ]
    do
    if [[ $opt = "" ]]; then 
            exit
    else
        case $opt in
        0) clear
           option_picked "Option 0 Picked"
           systemctl --failed 
           show_menu
           ;;

   
        1) clear
           option_picked "Option 1 Picked"
           journalctl -p 3 -xb
           show_menu
           ;;

        2) clear
            option_picked "Option 2 Picked"
            systemctl list-unit-files
            show_menu
            ;;

        3) clear
            option_picked "Option 3 Picked"
            systemctl status 
            show_menu
            ;;

        4) clear
            option_picked "Option 4 Picked"
            systemctl 
            show_menu
            ;;

	5) clear
	    option_picked "Option 5 Picked"
	    systemctl list-units --type=target 
	    show_menu
	    ;;
	
	6) clear
            option_picked "Option 6 Picked"
            journalctl --vacuum-size=100M 
            show_menu
            ;;

        7) clear
            option_picked "Option 7 Picked"
            journalctl -b
            show_menu
            ;;

	8) clear
            option_picked "Option 8 Picked"
            sudo touch /forcefsck
            echo "Fsck enabled for next boot"
            show_menu
            ;;

        9) clear
            option_picked "Option 9 Picked"
            clear
            show_menu
            ;;


        x) exit
        ;;

        \n) exit
        ;;

        *) clear
        option_picked "Pick an option from the menu"
        show_menu
        ;;
    esac
fi
done
