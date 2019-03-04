#!/bin/sh
show_menu(){
    NORMAL=`echo "\033[m"`
    MENU=`echo "\033[36m"` #Blue
    NUMBER=`echo "\033[33m"` #yellow
    FGRED=`echo "\033[41m"`
    RED_TEXT=`echo "\033[31m"`
    ENTER_LINE=`echo "\033[33m"`
    echo -e "${MENU}*********************************************${NORMAL}"
    echo -e "${MENU}**${NUMBER} 0)${MENU}  Neofetch ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 1)${MENU}  Archey ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 2)${MENU}  Lists packages which have an update available ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 3)${MENU}  ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 4)${MENU}  ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 5)${MENU}  ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 6)${MENU}  ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 7)${MENU}  ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 8)${MENU}  ${NORMAL}"
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
            exit;
    else
        case $opt in
        0) clear;
           option_picked "Option 0 Picked";
           neofetch; 
           show_menu;
           ;;

   
        1) clear;
           option_picked "Option 1 Picked";
           archey3; 
           show_menu;
           ;;

        2) clear;
            option_picked "Option 2 Picked";
            sudo pacman -Qu;
            show_menu;
            ;;

        3) clear;
            option_picked "Option 3 Picked";
            clear;
            show_menu;
            ;;

        4) clear;
            option_picked "Option 4 Picked";
            clear;
            show_menu;
            ;;


	5) clear;
	    option_picked "Option 5 Picked";
	    clear;
	    show_menu;
	    ;;
	
	6) clear;
            option_picked "Option 6 Picked";
            clear;
            show_menu;
            ;;

        7) clear;
            option_picked "Option 7 Picked";
            clear;
            show_menu;
            ;;

	8) clear;
            option_picked "Option 8 Picked";
            clear;
            show_menu;
            ;;

        9) clear;
            option_picked "Option 9 Picked";
            clear;
            show_menu;
            ;;


        x)exit;
        ;;

        \n)exit;
        ;;

        *)clear;
        option_picked "Pick an option from the menu";
        show_menu;
        ;;
    esac
fi
done
