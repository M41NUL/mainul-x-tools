#!/bin/bash
# ============================================================
#  MAINUL-X TOOLS - banner.sh
#  ASCII Art Banner + Auto-Width Info Box
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
    echo -e "${CYAN}${BOLD}               T E R M U X   T O O L S${RESET}"
    echo ""

    # Auto-width double line info box
    box_top
    box_row "  VERSION :" "${TOOLS_VERSION}"        "$ORANGE" "$GREEN"
    box_row "  AUTHOR  :" "${AUTHOR}"               "$ORANGE" "$WHITE"
    box_row "  OWNER   :" "${OWNER}"                "$ORANGE" "$ORANGE"
    box_sep
    box_row "  GITHUB  :" "${GITHUB_URL}"           "$CYAN"   "$WHITE"
    box_row "  TG      :" "${TELEGRAM_CHANNEL}"     "$CYAN"   "$WHITE"
    box_bottom

    echo ""
    echo -e "  ${DIM}${WHITE}${COPYRIGHT}${RESET}"
    echo ""
}
