#!/bin/bash
# ============================================================
#  MAINUL-X TOOLS - devinfo.sh
#  Developer Information Screen - Auto-Width Box
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

    box_top
    box_row "  AUTHOR  :" "Md. Mainul Islam"          "$ORANGE" "$WHITE"
    box_row "  BRAND   :" "MAINUL-X"                  "$ORANGE" "$ORANGE"
    box_sep
    box_row "  GITHUB  :" "github.com/M41NUL"         "$CYAN"   "$WHITE"
    box_row "  TELEGRAM:" "t.me/mdmainulislaminfo"    "$CYAN"   "$WHITE"
    box_row "  CHANNEL :" "t.me/mainul_x_official"   "$CYAN"   "$WHITE"
    box_row "  GROUP   :" "t.me/mainul_x_official_gc" "$CYAN"  "$WHITE"
    box_row "  YOUTUBE :" "youtube.com/@mdmainulislaminfo" "$CYAN" "$WHITE"
    box_sep
    box_row "  EMAIL   :" "devmainulislam@gmail.com"  "$GREEN"  "$WHITE"
    box_row "  WHATSAPP:" "+8801308850528"             "$GREEN"  "$WHITE"
    box_bottom

    echo ""
    echo -e "  ${DIM}${WHITE}${COPYRIGHT}${RESET}"
    echo ""
    print_line
    pause_menu
}
