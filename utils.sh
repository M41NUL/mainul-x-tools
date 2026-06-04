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

# Get terminal width (fallback 60 for small screens)
get_cols() {
    local cols
    cols=$(tput cols 2>/dev/null)
    if [ -z "$cols" ] || [ "$cols" -lt 30 ]; then
        cols=60
    fi
    # Cap at 70 for readability
    if [ "$cols" -gt 70 ]; then
        cols=70
    fi
    echo "$cols"
}

# Draw top border:    ╔══════╗
box_top() {
    local cols=$(get_cols)
    local inner=$((cols - 2))
    local line=""
    for ((i=0; i<inner; i++)); do line+="═"; done
    echo -e "${CYAN}${BOLD}╔${line}╗${RESET}"
}

# Draw bottom border: ╚══════╝
box_bottom() {
    local cols=$(get_cols)
    local inner=$((cols - 2))
    local line=""
    for ((i=0; i<inner; i++)); do line+="═"; done
    echo -e "${CYAN}${BOLD}╚${line}╝${RESET}"
}

# Draw separator:     ╠══════╣
box_sep() {
    local cols=$(get_cols)
    local inner=$((cols - 2))
    local line=""
    for ((i=0; i<inner; i++)); do line+="═"; done
    echo -e "${CYAN}${BOLD}╠${line}╣${RESET}"
}

# Draw empty row:     ║      ║
box_empty() {
    local cols=$(get_cols)
    local inner=$((cols - 2))
    local spaces=""
    for ((i=0; i<inner; i++)); do spaces+=" "; done
    echo -e "${CYAN}${BOLD}║${RESET}${spaces}${CYAN}${BOLD}║${RESET}"
}

# Draw a row with text (auto pad):  ║  TEXT       ║
# Usage: box_row "  LABEL" "VALUE" LABEL_COLOR VALUE_COLOR
box_row() {
    local cols=$(get_cols)
    local inner=$((cols - 2))
    local label="$1"
    local value="$2"
    local lcolor="${3:-$WHITE}"
    local vcolor="${4:-$WHITE}"

    # Visible length (strip color codes for padding calc)
    local visible="${label}  ${value}"
    local vis_len=${#visible}
    local pad=$((inner - vis_len - 1))
    if [ $pad -lt 0 ]; then pad=0; fi

    local spaces=""
    for ((i=0; i<pad; i++)); do spaces+=" "; done

    echo -e "${CYAN}${BOLD}║${RESET} ${lcolor}${BOLD}${label}${RESET}  ${vcolor}${value}${RESET}${spaces} ${CYAN}${BOLD}║${RESET}"
}

# Draw a full-width divider line (no box)
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

# --- LOADING ANIMATION ---
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

# --- RUN INSTALL ---
run_install() {
    local label="$1"
    shift
    local commands=("$@")

    local LOG_DIR="$HOME/.mainulx"
    local LOG_FILE="$LOG_DIR/install.log"
    mkdir -p "$LOG_DIR"

    local FINAL_STATUS=0

    echo ""
    print_line
    echo -e "${ORANGE}${BOLD}  INSTALLING: ${WHITE}${label}${RESET}"
    print_line

    for cmd in "${commands[@]}"; do
        echo -e "\n${DIM}${CYAN}  >> ${cmd}${RESET}"
        loading_animation "Processing" &
        ANIM_PID=$!
        eval "$cmd" > "$LOG_FILE" 2>&1
        STATUS=$?
        kill $ANIM_PID 2>/dev/null
        wait $ANIM_PID 2>/dev/null
        echo -ne "\r                                              \r"
        if [ $STATUS -eq 0 ]; then
            echo -e "${GREEN}  [  OK  ]${RESET} ${WHITE}${cmd}${RESET}"
        else
            FINAL_STATUS=1
            echo -e "${RED}  [ FAIL ]${RESET} ${WHITE}${cmd}${RESET}"
            local err_msg
            err_msg=$(tail -1 "$LOG_FILE" 2>/dev/null)
            if [ -n "$err_msg" ]; then
                echo -e "${DIM}${RED}           ${err_msg}${RESET}"
            fi
        fi
    done

    echo ""
    print_line
    if [ $FINAL_STATUS -eq 0 ]; then
        print_success "${label} installation completed."
    else
        print_warn "Some steps failed. Check output above."
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
