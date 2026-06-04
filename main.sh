#!/bin/bash
# ============================================================
#  MAINUL-X TOOLS - main.sh
#  Entry Point - Run this file to start the tool
#  Usage: bash main.sh
# ============================================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_URL="https://github.com/M41NUL/mainul-x-tools"
REPO_NAME="mainul-x-tools"
INSTALL_DIR="$HOME/${REPO_NAME}"

source "$SCRIPT_DIR/utils.sh"
source "$SCRIPT_DIR/banner.sh"
source "$SCRIPT_DIR/menu.sh"
source "$SCRIPT_DIR/devinfo.sh"
source "$SCRIPT_DIR/installer.sh"

# ─── AUTO UPDATE ─────────────────────────────────────────────
auto_update() {
    clear
    echo ""
    print_line
    echo -e "${ORANGE}${BOLD}  CHECKING FOR UPDATES...${RESET}"
    print_line
    echo ""

    # Check internet
    if ! ping -c 1 github.com &>/dev/null 2>&1; then
        print_warn "No internet connection. Skipping update."
        sleep 2
        return
    fi

    # Get local commit hash
    local LOCAL_HASH
    LOCAL_HASH=$(git -C "$SCRIPT_DIR" rev-parse HEAD 2>/dev/null)

    # Get remote commit hash
    local REMOTE_HASH
    REMOTE_HASH=$(git ls-remote "$REPO_URL" HEAD 2>/dev/null | awk '{print $1}')

    if [ -z "$REMOTE_HASH" ]; then
        print_warn "Could not reach GitHub. Skipping update."
        sleep 2
        return
    fi

    if [ "$LOCAL_HASH" = "$REMOTE_HASH" ]; then
        echo -e "${GREEN}${BOLD}  [ UP TO DATE ]${RESET} ${WHITE}No new updates found.${RESET}"
        sleep 1
        return
    fi

    # New update found
    echo -e "${ORANGE}${BOLD}  [ UPDATE FOUND ]${RESET} ${WHITE}New version available!${RESET}"
    echo ""
    echo -e "  ${DIM}${WHITE}Local  : ${LOCAL_HASH:0:7}${RESET}"
    echo -e "  ${DIM}${WHITE}Remote : ${REMOTE_HASH:0:7}${RESET}"
    echo ""
    print_line
    echo ""
    echo -ne "  ${CYAN}Update now?${RESET} ${ORANGE}[y/n]${RESET} > "
    read -r confirm

    if [[ "$confirm" =~ ^[Yy]$ ]]; then
        echo ""
        print_line
        echo -e "${ORANGE}${BOLD}  UPDATING...${RESET}"
        print_line
        echo ""

        # Delete old folder and re-clone fresh
        echo -e "${DIM}${CYAN}  >> Removing old version...${RESET}"
        rm -rf "$INSTALL_DIR"
        echo -e "${GREEN}  [  OK  ]${RESET} Old version removed."
        echo ""

        echo -e "${DIM}${CYAN}  >> Cloning latest version...${RESET}"
        git clone "$REPO_URL" "$INSTALL_DIR"

        if [ $? -eq 0 ]; then
            echo ""
            print_line
            print_success "Update complete! Restarting..."
            print_line
            sleep 2
            # Restart from new location
            chmod +x "$INSTALL_DIR/main.sh"
            exec bash "$INSTALL_DIR/main.sh"
        else
            echo ""
            print_error "Update failed. Running current version."
            sleep 2
        fi
    else
        echo ""
        print_warn "Update skipped. Running current version."
        sleep 1
    fi
}

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

    box_top
    box_row "  Join Telegram for updates & support" "" "$ORANGE" "$WHITE"
    box_sep
    box_row "  CHANNEL :" "t.me/mainul_x_official"    "$CYAN" "$WHITE"
    box_row "  GROUP   :" "t.me/mainul_x_official_gc" "$CYAN" "$WHITE"
    box_row "  DEV     :" "t.me/mdmainulislaminfo"    "$CYAN" "$WHITE"
    box_bottom

    if command -v termux-open-url &>/dev/null; then
        termux-open-url "https://t.me/mainul_x_official" &>/dev/null &
    fi

    echo ""
    echo -e "  ${DIM}${WHITE}Continuing in 3 seconds...${RESET}"
    for i in 3 2 1; do
        echo -ne "\r  ${ORANGE}  Starting in ${BOLD}${i}${RESET}${ORANGE} ...${RESET}   "
        sleep 1
    done
    echo ""
}

# ─── MAIN LOOP ───────────────────────────────────────────────
main() {
    telegram_redirect
    auto_update

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
