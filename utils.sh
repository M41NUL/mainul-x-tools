#!/bin/bash
# ============================================================
#  MAINUL-X TOOLS - utils.sh
#  Color definitions, constants, helper functions
# ============================================================

# --- COLORS ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
WHITE='\033[1;37m'
ORANGE='\033[38;5;208m'
BOLD='\033[1m'
DIM='\033[2m'
RESET='\033[0m'

# --- PROJECT INFO ---
TOOLS_NAME="MAINUL-X TOOLS"
TOOLS_VERSION="v1.0.0"
AUTHOR="Md. Mainul Islam"
OWNER="MAINUL-X"
GITHUB="M41NUL"
GITHUB_URL="https://github.com/M41NUL"
WHATSAPP="+8801308850528"
TELEGRAM="t.me/mdmainulislaminfo"
TELEGRAM_CHANNEL="https://t.me/mainul_x_official"
TELEGRAM_GROUP="https://t.me/mainul_x_official_gc"
EMAIL="devmainulislam@gmail.com"
YOUTUBE="https://youtube.com/@mdmainulislaminfo"
YEAR=$(date +%Y)
COPYRIGHT="(c) ${YEAR} MAINUL-X. All Rights Reserved."

# --- AUTO BOX FUNCTIONS ---

get_cols() {
    local cols
    cols=$(tput cols 2>/dev/null)
    if [ -z "$cols" ] || [ "$cols" -lt 30 ]; then
        cols=60
    fi
    if [ "$cols" -gt 70 ]; then
        cols=70
    fi
    echo "$cols"
}

box_top() {
    local cols=$(get_cols)
    local inner=$((cols - 2))
    local line=""
    for ((i=0; i<inner; i++)); do line+="═"; done
    echo -e "${CYAN}${BOLD}╔${line}╗${RESET}"
}

box_bottom() {
    local cols=$(get_cols)
    local inner=$((cols - 2))
    local line=""
    for ((i=0; i<inner; i++)); do line+="═"; done
    echo -e "${CYAN}${BOLD}╚${line}╝${RESET}"
}

box_sep() {
    local cols=$(get_cols)
    local inner=$((cols - 2))
    local line=""
    for ((i=0; i<inner; i++)); do line+="═"; done
    echo -e "${CYAN}${BOLD}╠${line}╣${RESET}"
}

box_empty() {
    local cols=$(get_cols)
    local inner=$((cols - 2))
    local spaces=""
    for ((i=0; i<inner; i++)); do spaces+=" "; done
    echo -e "${CYAN}${BOLD}║${RESET}${spaces}${CYAN}${BOLD}║${RESET}"
}

box_row() {
    local cols=$(get_cols)
    local inner=$((cols - 2))
    local label="$1"
    local value="$2"
    local lcolor="${3:-$WHITE}"
    local vcolor="${4:-$WHITE}"
    local visible="${label}  ${value}"
    local vis_len=${#visible}
    local pad=$((inner - vis_len - 1))
    if [ $pad -lt 0 ]; then pad=0; fi
    local spaces=""
    for ((i=0; i<pad; i++)); do spaces+=" "; done
    echo -e "${CYAN}${BOLD}║${RESET} ${lcolor}${BOLD}${label}${RESET}  ${vcolor}${value}${RESET}${spaces} ${CYAN}${BOLD}║${RESET}"
}

print_line() {
    local cols=$(get_cols)
    local line=""
    for ((i=0; i<cols; i++)); do line+="━"; done
    echo -e "${DIM}${CYAN}${line}${RESET}"
}

# --- STATUS PRINTS ---
print_success() {
    echo -e "\n${GREEN}${BOLD}  [ SUCCESS ]${RESET} ${WHITE}$1${RESET}"
}

print_error() {
    echo -e "\n${RED}${BOLD}  [ ERROR ]${RESET} ${WHITE}$1${RESET}"
}

print_info() {
    echo -e "${CYAN}  [ INFO  ]${RESET} ${WHITE}$1${RESET}"
}

print_warn() {
    echo -e "${YELLOW}  [ WARN  ]${RESET} ${WHITE}$1${RESET}"
}

# --- RUN INSTALL (Real output) ---
run_install() {
    local label="$1"
    shift
    local commands=("$@")

    local FINAL_STATUS=0
    local PASS=0
    local FAIL=0

    echo ""
    print_line
    echo -e "${ORANGE}${BOLD}  INSTALLING: ${WHITE}${label}${RESET}"
    print_line
    echo ""

    for cmd in "${commands[@]}"; do
        echo -e "${DIM}${CYAN}  ┌─ CMD ──────────────────────────────${RESET}"
        echo -e "${DIM}${CYAN}  │${RESET} ${YELLOW}${cmd}${RESET}"
        echo -e "${DIM}${CYAN}  └────────────────────────────────────${RESET}"
        echo ""

        # Run with real output visible
        eval "$cmd"
        STATUS=$?

        echo ""
        if [ $STATUS -eq 0 ]; then
            echo -e "${GREEN}${BOLD}  [  OK  ]${RESET} ${WHITE}${cmd}${RESET}"
            ((PASS++))
        else
            echo -e "${RED}${BOLD}  [ FAIL ]${RESET} ${WHITE}${cmd}${RESET}"
            ((FAIL++))
            FINAL_STATUS=1
        fi
        echo ""
        print_line
        echo ""
    done

    # Summary box
    box_top
    box_row "  INSTALL SUMMARY" ""                     "$ORANGE" "$WHITE"
    box_sep
    box_row "  LABEL   :" "${label}"                   "$WHITE"  "$WHITE"
    box_row "  PASSED  :" "${PASS} commands"           "$GREEN"  "$GREEN"
    box_row "  FAILED  :" "${FAIL} commands"           "$RED"    "$RED"
    box_row "  STATUS  :" "$([ $FINAL_STATUS -eq 0 ] && echo 'COMPLETED' || echo 'PARTIAL')" \
        "$WHITE" "$([ $FINAL_STATUS -eq 0 ] && echo $GREEN || echo $YELLOW)"
    box_bottom

    echo ""
    read -p "$(echo -e "${DIM}  Press ENTER to return to menu...${RESET}")"
}

pause_menu() {
    echo ""
    read -p "$(echo -e "${DIM}  Press ENTER to return to menu...${RESET}")"
}

clear_screen() {
    clear
}
