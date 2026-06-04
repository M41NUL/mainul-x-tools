#!/bin/bash
# ============================================================
#  MAINUL-X TOOLS - menu.sh
#  Main Menu - Auto-Width Double Line Box
# ============================================================

source "$(dirname "$0")/utils.sh"

show_menu() {
    echo ""
    box_top
    box_row "   MAINUL-X TOOLS" "[ Select an option ]"  "$ORANGE" "$DIM$WHITE"
    box_sep
    box_row "  [ 1]" "Languages & Runtime"    "$ORANGE" "$WHITE"
    box_row "  [ 2]" "Full Python Setup"      "$ORANGE" "$WHITE"
    box_row "  [ 3]" "Full NodeJS Setup"      "$ORANGE" "$WHITE"
    box_row "  [ 4]" "Web Dev Setup"          "$ORANGE" "$WHITE"
    box_row "  [ 5]" "Database Setup"         "$ORANGE" "$WHITE"
    box_row "  [ 6]" "Server Setup"           "$ORANGE" "$WHITE"
    box_row "  [ 7]" "Network Tools"          "$ORANGE" "$WHITE"
    box_row "  [ 8]" "Build Tools"            "$ORANGE" "$WHITE"
    box_row "  [ 9]" "Editors & IDE"          "$ORANGE" "$WHITE"
    box_row "  [10]" "System Utilities"       "$ORANGE" "$WHITE"
    box_row "  [11]" "Media Tools"            "$ORANGE" "$WHITE"
    box_row "  [12]" "Libraries"              "$ORANGE" "$WHITE"
    box_row "  [13]" "Termux Specific"        "$ORANGE" "$WHITE"
    box_row "  [14]" "Security & Crypto"      "$ORANGE" "$WHITE"
    box_row "  [15]" "Fun Tools"              "$ORANGE" "$WHITE"
    box_row "  [16]" "Custom Package Install" "$ORANGE" "$WHITE"
    box_sep
    box_row "  [17]" "Developer Information"  "$CYAN"   "$WHITE"
    box_row "  [ 0]" "Exit"                   "$RED"    "$WHITE"
    box_bottom
    echo ""
    echo -ne "  ${CYAN}Choose option${RESET} ${ORANGE}>${RESET} "
}
