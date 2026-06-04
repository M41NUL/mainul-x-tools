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

# --- HELPER FUNCTIONS ---

print_line() {
    echo -e "${DIM}${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
}

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

loading_animation() {
    local message="$1"
    local frames=('|' '/' '-' '\')
    local i=0
    while true; do
        echo -ne "\r${ORANGE}  ${frames[$((i % 4))]}${RESET} ${WHITE}${message}...${RESET}"
        sleep 0.12
        ((i++))
    done
}

run_install() {
    local label="$1"
    shift
    local commands=("$@")

    echo ""
    print_line
    echo -e "${ORANGE}${BOLD}  INSTALLING: ${WHITE}${label}${RESET}"
    print_line

    for cmd in "${commands[@]}"; do
        echo -e "\n${DIM}${CYAN}  >> ${cmd}${RESET}"
        loading_animation "Processing" &
        ANIM_PID=$!
        eval "$cmd" > /tmp/mainulx_install.log 2>&1
        STATUS=$?
        kill $ANIM_PID 2>/dev/null
        wait $ANIM_PID 2>/dev/null
        echo -ne "\r"
        if [ $STATUS -eq 0 ]; then
            echo -e "${GREEN}  [  OK  ]${RESET} ${WHITE}${cmd}${RESET}"
        else
            echo -e "${RED}  [ FAIL ]${RESET} ${WHITE}${cmd}${RESET}"
            echo -e "${DIM}${RED}         $(tail -1 /tmp/mainulx_install.log)${RESET}"
        fi
    done

    echo ""
    print_line
    if [ $STATUS -eq 0 ]; then
        print_success "${label} installation completed."
    else
        print_error "Some steps failed. Check logs above."
    fi
    print_line
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
