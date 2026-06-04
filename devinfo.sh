#!/bin/bash
# ============================================================
#  MAINUL-X TOOLS - devinfo.sh
#  Developer Information Screen
# ============================================================

source "$(dirname "$0")/utils.sh"

show_devinfo() {
    clear
    echo ""
    echo -e "${ORANGE}${BOLD}"
    echo "   ██████╗ ███████╗██╗   ██╗    ██╗███╗   ██╗███████╗ ██████╗ "
    echo "   ██╔══██╗██╔════╝██║   ██║    ██║████╗  ██║██╔════╝██╔═══██╗"
    echo "   ██║  ██║█████╗  ██║   ██║    ██║██╔██╗ ██║█████╗  ██║   ██║"
    echo "   ██║  ██║██╔══╝  ╚██╗ ██╔╝    ██║██║╚██╗██║██╔══╝  ██║   ██║"
    echo "   ██████╔╝███████╗ ╚████╔╝     ██║██║ ╚████║██║     ╚██████╔╝"
    echo "   ╚═════╝ ╚══════╝  ╚═══╝      ╚═╝╚═╝  ╚═══╝╚═╝      ╚═════╝ "
    echo -e "${RESET}"
    print_line
    echo ""
    echo -e "${CYAN}${BOLD}   DEVELOPER INFORMATION${RESET}"
    echo ""
    echo -e "   ${DIM}${CYAN}┌──────────────────────────────────────────────────────────┐${RESET}"
    echo -e "   ${DIM}${CYAN}│${RESET}                                                          ${DIM}${CYAN}│${RESET}"
    echo -e "   ${DIM}${CYAN}│${RESET}  ${ORANGE}${BOLD}  AUTHOR   ${RESET}   ${WHITE}Md. Mainul Islam${RESET}                           ${DIM}${CYAN}│${RESET}"
    echo -e "   ${DIM}${CYAN}│${RESET}  ${ORANGE}${BOLD}  BRAND    ${RESET}   ${ORANGE}MAINUL-X${RESET}                                   ${DIM}${CYAN}│${RESET}"
    echo -e "   ${DIM}${CYAN}│${RESET}                                                          ${DIM}${CYAN}│${RESET}"
    print_line
    echo -e "   ${DIM}${CYAN}│${RESET}  ${CYAN}${BOLD}  GITHUB   ${RESET}   ${WHITE}github.com/M41NUL${RESET}                           ${DIM}${CYAN}│${RESET}"
    echo -e "   ${DIM}${CYAN}│${RESET}  ${CYAN}${BOLD}  TELEGRAM ${RESET}   ${WHITE}t.me/mdmainulislaminfo${RESET}                      ${DIM}${CYAN}│${RESET}"
    echo -e "   ${DIM}${CYAN}│${RESET}  ${CYAN}${BOLD}  CHANNEL  ${RESET}   ${WHITE}t.me/mainul_x_official${RESET}                     ${DIM}${CYAN}│${RESET}"
    echo -e "   ${DIM}${CYAN}│${RESET}  ${CYAN}${BOLD}  GROUP    ${RESET}   ${WHITE}t.me/mainul_x_official_gc${RESET}                  ${DIM}${CYAN}│${RESET}"
    echo -e "   ${DIM}${CYAN}│${RESET}  ${CYAN}${BOLD}  YOUTUBE  ${RESET}   ${WHITE}youtube.com/@mdmainulislaminfo${RESET}              ${DIM}${CYAN}│${RESET}"
    echo -e "   ${DIM}${CYAN}│${RESET}                                                          ${DIM}${CYAN}│${RESET}"
    print_line
    echo -e "   ${DIM}${CYAN}│${RESET}  ${GREEN}${BOLD}  EMAIL    ${RESET}   ${WHITE}devmainulislam@gmail.com${RESET}                   ${DIM}${CYAN}│${RESET}"
    echo -e "   ${DIM}${CYAN}│${RESET}  ${GREEN}${BOLD}  WHATSAPP ${RESET}   ${WHITE}+8801308850528${RESET}                             ${DIM}${CYAN}│${RESET}"
    echo -e "   ${DIM}${CYAN}│${RESET}                                                          ${DIM}${CYAN}│${RESET}"
    echo -e "   ${DIM}${CYAN}└──────────────────────────────────────────────────────────┘${RESET}"
    echo ""
    echo -e "   ${DIM}${WHITE}${COPYRIGHT}${RESET}"
    echo ""
    print_line
    pause_menu
}
