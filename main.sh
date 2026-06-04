#!/bin/bash
# ============================================================
#  MAINUL-X TOOLS - main.sh
#  Entry Point - Run this file to start the tool
#  Usage: bash main.sh
# ============================================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/utils.sh"
source "$SCRIPT_DIR/banner.sh"
source "$SCRIPT_DIR/menu.sh"
source "$SCRIPT_DIR/devinfo.sh"
source "$SCRIPT_DIR/installer.sh"

# ─── TELEGRAM REDIRECT ON FIRST LAUNCH ──────────────────────
telegram_redirect() {
    clear
    echo ""
    echo -e "${ORANGE}${BOLD}"
    echo "  ████████╗███████╗██╗     ███████╗ ██████╗ ██████╗  █████╗ ███╗   ███╗"
    echo "  ╚══██╔══╝██╔════╝██║     ██╔════╝██╔════╝ ██╔══██╗██╔══██╗████╗ ████║"
    echo "     ██║   █████╗  ██║     █████╗  ██║  ███╗██████╔╝███████║██╔████╔██║"
    echo "     ██║   ██╔══╝  ██║     ██╔══╝  ██║   ██║██╔══██╗██╔══██║██║╚██╔╝██║"
    echo "     ██║   ███████╗███████╗███████╗╚██████╔╝██║  ██║██║  ██║██║ ╚═╝ ██║"
    echo "     ╚═╝   ╚══════╝╚══════╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝"
    echo -e "${RESET}"
    echo ""
    echo -e "  ${DIM}${CYAN}┌─────────────────────────────────────────────────────────────┐${RESET}"
    echo -e "  ${DIM}${CYAN}│${RESET}                                                             ${DIM}${CYAN}│${RESET}"
    echo -e "  ${DIM}${CYAN}│${RESET}   ${ORANGE}${BOLD}  Join our Telegram Channel for updates & support  ${RESET}     ${DIM}${CYAN}│${RESET}"
    echo -e "  ${DIM}${CYAN}│${RESET}                                                             ${DIM}${CYAN}│${RESET}"
    echo -e "  ${DIM}${CYAN}│${RESET}   ${CYAN}${BOLD}  CHANNEL  ${RESET}  ${WHITE}t.me/mainul_x_official${RESET}                      ${DIM}${CYAN}│${RESET}"
    echo -e "  ${DIM}${CYAN}│${RESET}   ${CYAN}${BOLD}  GROUP    ${RESET}  ${WHITE}t.me/mainul_x_official_gc${RESET}                   ${DIM}${CYAN}│${RESET}"
    echo -e "  ${DIM}${CYAN}│${RESET}   ${CYAN}${BOLD}  DEV      ${RESET}  ${WHITE}t.me/mdmainulislaminfo${RESET}                      ${DIM}${CYAN}│${RESET}"
    echo -e "  ${DIM}${CYAN}│${RESET}                                                             ${DIM}${CYAN}│${RESET}"
    echo -e "  ${DIM}${CYAN}└─────────────────────────────────────────────────────────────┘${RESET}"
    echo ""

    if command -v termux-open-url &>/dev/null; then
        termux-open-url "https://t.me/mainul_x_official" &>/dev/null &
    fi

    echo -e "\n  ${DIM}${WHITE}Continuing in 3 seconds...${RESET}"
    for i in 3 2 1; do
        echo -ne "\r  ${ORANGE}  Starting in ${BOLD}${i}${RESET}${ORANGE} ...${RESET}   "
        sleep 1
    done
    echo ""
}

# ─── MAIN LOOP ───────────────────────────────────────────────
main() {
    telegram_redirect

    while true; do
        show_banner
        show_menu
        read -r choice

        case $choice in
            1)  install_languages ;;
            2)  install_python ;;
            3)  install_nodejs ;;
            4)  install_webdev ;;
            5)  install_database ;;
            6)  install_server ;;
            7)  install_network ;;
            8)  install_build ;;
            9)  install_editors ;;
            10) install_system ;;
            11) install_media ;;
            12) install_libs ;;
            13) install_termux ;;
            14) install_security ;;
            15) install_fun ;;
            16) install_custom ;;
            17) show_devinfo ;;
            0)
                clear
                echo ""
                print_line
                echo -e "${ORANGE}${BOLD}   Exiting MAINUL-X TOOLS...${RESET}"
                echo -e "${DIM}${WHITE}   ${COPYRIGHT}${RESET}"
                print_line
                echo ""
                exit 0
                ;;
            *)
                print_error "Invalid option. Please choose from the menu."
                sleep 1
                ;;
        esac
    done
}

main
