#!/bin/bash
# ============================================================
#  MAINUL-X TOOLS - banner.sh
#  ASCII Art Banner + Info Box
# ============================================================

source "$(dirname "$0")/utils.sh"

show_banner() {
    clear
    echo ""
    echo -e "${ORANGE}${BOLD}"
    echo "  ███╗   ███╗ █████╗ ██╗███╗   ██╗██╗   ██╗██╗      ██╗  ██╗"
    echo "  ████╗ ████║██╔══██╗██║████╗  ██║██║   ██║██║      ╚██╗██╔╝"
    echo "  ██╔████╔██║███████║██║██╔██╗ ██║██║   ██║██║       ╚███╔╝ "
    echo "  ██║╚██╔╝██║██╔══██║██║██║╚██╗██║██║   ██║██║       ██╔██╗ "
    echo "  ██║ ╚═╝ ██║██║  ██║██║██║ ╚████║╚██████╔╝███████╗ ██╔╝ ██╗"
    echo "  ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝"
    echo -e "${RESET}"
    echo -e "${CYAN}${BOLD}                   T  E  R  M  U  X     T  O  O  L  S${RESET}"
    echo ""

    # Info Box
    echo -e "${DIM}${CYAN}  ┌─────────────────────────────────────────────────────────────┐${RESET}"
    echo -e "${DIM}${CYAN}  │${RESET}${BOLD}${WHITE}   TOOLS  ${RESET}${DIM}${CYAN}:${RESET}  ${ORANGE}${BOLD}${TOOLS_NAME}                               ${DIM}${CYAN}│${RESET}"
    echo -e "${DIM}${CYAN}  │${RESET}${BOLD}${WHITE}   VERSION${RESET}${DIM}${CYAN}:${RESET}  ${GREEN}${TOOLS_VERSION}                                         ${DIM}${CYAN}│${RESET}"
    echo -e "${DIM}${CYAN}  │${RESET}${BOLD}${WHITE}   AUTHOR ${RESET}${DIM}${CYAN}:${RESET}  ${WHITE}${AUTHOR}                              ${DIM}${CYAN}│${RESET}"
    echo -e "${DIM}${CYAN}  │${RESET}${BOLD}${WHITE}   OWNER  ${RESET}${DIM}${CYAN}:${RESET}  ${ORANGE}${BOLD}${OWNER}                                       ${DIM}${CYAN}│${RESET}"
    echo -e "${DIM}${CYAN}  │${RESET}${BOLD}${WHITE}   GITHUB ${RESET}${DIM}${CYAN}:${RESET}  ${CYAN}${GITHUB_URL}                      ${DIM}${CYAN}│${RESET}"
    echo -e "${DIM}${CYAN}  │${RESET}${BOLD}${WHITE}   TG     ${RESET}${DIM}${CYAN}:${RESET}  ${CYAN}${TELEGRAM_CHANNEL}               ${DIM}${CYAN}│${RESET}"
    echo -e "${DIM}${CYAN}  └─────────────────────────────────────────────────────────────┘${RESET}"
    echo -e "  ${DIM}${WHITE}${COPYRIGHT}${RESET}"
    echo ""
}
