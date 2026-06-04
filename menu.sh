#!/bin/bash
# ============================================================
#  MAINUL-X TOOLS - menu.sh
#  Main Menu Display
# ============================================================

source "$(dirname "$0")/utils.sh"

show_menu() {
    echo ""
    print_line
    echo -e "${ORANGE}${BOLD}   MAINUL-X TOOLS  ${RESET}${DIM}${WHITE}[ Select an option ]${RESET}"
    print_line
    echo ""
    echo -e "   ${ORANGE}${BOLD}[ 1]${RESET}  ${WHITE}Languages & Runtime   ${RESET}${DIM}python, node, ruby, php, golang, rust, java${RESET}"
    echo -e "   ${ORANGE}${BOLD}[ 2]${RESET}  ${WHITE}Full Python Setup     ${RESET}${DIM}pip + 45 popular libraries${RESET}"
    echo -e "   ${ORANGE}${BOLD}[ 3]${RESET}  ${WHITE}Full NodeJS Setup     ${RESET}${DIM}npm + yarn, pm2, vercel, next +more${RESET}"
    echo -e "   ${ORANGE}${BOLD}[ 4]${RESET}  ${WHITE}Web Dev Setup         ${RESET}${DIM}nginx, apache, php, mariadb, redis +more${RESET}"
    echo -e "   ${ORANGE}${BOLD}[ 5]${RESET}  ${WHITE}Database Setup        ${RESET}${DIM}mariadb, postgresql, sqlite, redis, mongodb${RESET}"
    echo -e "   ${ORANGE}${BOLD}[ 6]${RESET}  ${WHITE}Server Setup          ${RESET}${DIM}nginx, apache, pm2, gunicorn, openssh${RESET}"
    echo -e "   ${ORANGE}${BOLD}[ 7]${RESET}  ${WHITE}Network Tools         ${RESET}${DIM}curl, wget, nmap, whois, netcat, tor +more${RESET}"
    echo -e "   ${ORANGE}${BOLD}[ 8]${RESET}  ${WHITE}Build Tools           ${RESET}${DIM}git, cmake, make, clang, gcc, binutils${RESET}"
    echo -e "   ${ORANGE}${BOLD}[ 9]${RESET}  ${WHITE}Editors & IDE         ${RESET}${DIM}nano, vim, neovim, emacs, micro, code-server${RESET}"
    echo -e "   ${ORANGE}${BOLD}[10]${RESET}  ${WHITE}System Utilities      ${RESET}${DIM}htop, tmux, jq, rsync, busybox +30 tools${RESET}"
    echo -e "   ${ORANGE}${BOLD}[11]${RESET}  ${WHITE}Media Tools           ${RESET}${DIM}ffmpeg, imagemagick, yt-dlp, sox, mpv${RESET}"
    echo -e "   ${ORANGE}${BOLD}[12]${RESET}  ${WHITE}Libraries             ${RESET}${DIM}openssl, libffi, zlib, libpng, boost +more${RESET}"
    echo -e "   ${ORANGE}${BOLD}[13]${RESET}  ${WHITE}Termux Specific       ${RESET}${DIM}termux-api, proot, proot-distro, tsu${RESET}"
    echo -e "   ${ORANGE}${BOLD}[14]${RESET}  ${WHITE}Security & Crypto     ${RESET}${DIM}gnupg, openssl, age, pass, pyotp +more${RESET}"
    echo -e "   ${ORANGE}${BOLD}[15]${RESET}  ${WHITE}Fun Tools             ${RESET}${DIM}figlet, lolcat, cmatrix, cowsay, neofetch${RESET}"
    echo -e "   ${ORANGE}${BOLD}[16]${RESET}  ${WHITE}Custom Package        ${RESET}${DIM}pkg / pip / npm manual install${RESET}"
    echo ""
    print_line
    echo -e "   ${CYAN}${BOLD}[17]${RESET}  ${WHITE}Developer Information${RESET}"
    echo -e "   ${RED}${BOLD}[ 0]${RESET}  ${WHITE}Exit${RESET}"
    echo ""
    print_line
    echo ""
    echo -ne "   ${CYAN}Choose option${RESET} ${ORANGE}>${RESET} "
}
