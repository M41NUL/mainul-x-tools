#!/bin/bash
# ============================================================
#  MAINUL-X TOOLS - installer.sh
#  All installation setups - Full Termux Package Collection
# ============================================================

source "$(dirname "$0")/utils.sh"

# ─── [1] LANGUAGES & RUNTIME ─────────────────────────────────
install_languages() {
    local cmds=(
        "pkg update -y && pkg upgrade -y"
        "pkg install python -y"
        "pkg install python-pip -y"
        "pkg install nodejs -y"
        "pkg install npm -y"
        "pkg install ruby -y"
        "pkg install perl -y"
        "pkg install php -y"
        "pkg install golang -y"
        "pkg install rust -y"
        "pkg install openjdk-17 -y"
        "pkg install lua54 -y"
        "pkg install clang -y"
        "pkg install gcc -y"
        "pkg install g++ -y"
        "pkg install cmake -y"
        "pkg install make -y"
        "pip install --upgrade pip"
        "npm install -g npm@latest"
    )
    run_install "Languages & Runtime" "${cmds[@]}"
}

# ─── [2] FULL PYTHON SETUP ───────────────────────────────────
install_python() {
    local cmds=(
        "pkg update -y"
        "pkg install python -y"
        "pkg install python-pip -y"
        "pkg install clang -y"
        "pkg install openssl -y"
        "pkg install libffi -y"
        "pkg install libjpeg-turbo -y"
        "pkg install zlib -y"
        "pip install --upgrade pip"
        "pip install requests"
        "pip install flask"
        "pip install flask-cors"
        "pip install flask-sqlalchemy"
        "pip install fastapi"
        "pip install uvicorn"
        "pip install aiohttp"
        "pip install httpx"
        "pip install python-dotenv"
        "pip install pydantic"
        "pip install sqlalchemy"
        "pip install peewee"
        "pip install pymongo"
        "pip install redis"
        "pip install celery"
        "pip install numpy"
        "pip install pandas"
        "pip install matplotlib"
        "pip install scipy"
        "pip install scikit-learn"
        "pip install pillow"
        "pip install beautifulsoup4"
        "pip install scrapy"
        "pip install paramiko"
        "pip install cryptography"
        "pip install pycryptodome"
        "pip install python-telegram-bot"
        "pip install telethon"
        "pip install discord.py"
        "pip install tweepy"
        "pip install colorama"
        "pip install rich"
        "pip install click"
        "pip install typer"
        "pip install tqdm"
        "pip install loguru"
        "pip install pytest"
        "pip install black"
        "pip install flake8"
        "pip install mypy"
        "pip install virtualenv"
        "pip install poetry"
    )
    run_install "Full Python Setup" "${cmds[@]}"
}

# ─── [3] FULL NODEJS SETUP ───────────────────────────────────
install_nodejs() {
    local cmds=(
        "pkg update -y"
        "pkg install nodejs -y"
        "pkg install npm -y"
        "npm install -g npm@latest"
        "npm install -g yarn"
        "npm install -g pnpm"
        "npm install -g nodemon"
        "npm install -g pm2"
        "npm install -g express-generator"
        "npm install -g typescript"
        "npm install -g ts-node"
        "npm install -g eslint"
        "npm install -g prettier"
        "npm install -g jest"
        "npm install -g http-server"
        "npm install -g localtunnel"
        "npm install -g vercel"
        "npm install -g netlify-cli"
        "npm install -g firebase-tools"
        "npm install -g dotenv-cli"
        "npm install -g concurrently"
        "npm install -g serve"
        "npm install -g rimraf"
        "npm install -g cross-env"
        "npm install -g @vue/cli"
        "npm install -g next"
    )
    run_install "Full NodeJS Setup" "${cmds[@]}"
}

# ─── [4] WEB DEV SETUP ───────────────────────────────────────
install_webdev() {
    local cmds=(
        "pkg update -y"
        "pkg install git -y"
        "pkg install curl -y"
        "pkg install wget -y"
        "pkg install nodejs -y"
        "pkg install python -y"
        "pkg install php -y"
        "pkg install apache2 -y"
        "pkg install nginx -y"
        "pkg install mariadb -y"
        "pkg install postgresql -y"
        "pkg install sqlite -y"
        "pkg install redis -y"
        "pkg install php-fpm -y"
        "npm install -g yarn"
        "npm install -g nodemon"
        "npm install -g http-server"
        "npm install -g localtunnel"
        "npm install -g serve"
        "npm install -g vercel"
        "npm install -g firebase-tools"
        "pip install flask"
        "pip install django"
        "pip install fastapi"
        "pip install uvicorn"
        "pip install requests"
        "pip install python-dotenv"
        "pip install sqlalchemy"
        "pip install pymongo"
    )
    run_install "Full Web Dev Setup" "${cmds[@]}"
}

# ─── [5] DATABASE SETUP ──────────────────────────────────────
install_database() {
    local cmds=(
        "pkg update -y"
        "pkg install mariadb -y"
        "pkg install postgresql -y"
        "pkg install sqlite -y"
        "pkg install redis -y"
        "pkg install mongodb -y"
        "pip install pymongo"
        "pip install redis"
        "pip install sqlalchemy"
        "pip install peewee"
        "pip install pymysql"
        "pip install psycopg2"
        "npm install -g prisma"
    )
    run_install "Database Setup" "${cmds[@]}"
}

# ─── [6] SERVER SETUP ────────────────────────────────────────
install_server() {
    local cmds=(
        "pkg update -y"
        "pkg install nginx -y"
        "pkg install apache2 -y"
        "pkg install php -y"
        "pkg install php-fpm -y"
        "pkg install openssh -y"
        "pkg install termux-services -y"
        "npm install -g pm2"
        "npm install -g http-server"
        "npm install -g serve"
        "pip install uvicorn"
        "pip install gunicorn"
        "pip install waitress"
    )
    run_install "Server Setup" "${cmds[@]}"
}

# ─── [7] NETWORK TOOLS ───────────────────────────────────────
install_network() {
    local cmds=(
        "pkg update -y"
        "pkg install curl -y"
        "pkg install wget -y"
        "pkg install aria2 -y"
        "pkg install nmap -y"
        "pkg install whois -y"
        "pkg install dnsutils -y"
        "pkg install traceroute -y"
        "pkg install netcat -y"
        "pkg install net-tools -y"
        "pkg install iproute2 -y"
        "pkg install openssh -y"
        "pkg install openssl -y"
        "pkg install tor -y"
        "pkg install proxychains-ng -y"
        "pkg install httpie -y"
        "pip install scapy"
        "pip install paramiko"
        "pip install requests"
    )
    run_install "Network Tools" "${cmds[@]}"
}

# ─── [8] BUILD TOOLS ─────────────────────────────────────────
install_build() {
    local cmds=(
        "pkg update -y"
        "pkg install git -y"
        "pkg install git-lfs -y"
        "pkg install gh -y"
        "pkg install clang -y"
        "pkg install cmake -y"
        "pkg install make -y"
        "pkg install automake -y"
        "pkg install autoconf -y"
        "pkg install pkg-config -y"
        "pkg install binutils -y"
        "pkg install nasm -y"
        "pkg install ninja -y"
        "pkg install meson -y"
        "git config --global color.ui auto"
        "git config --global init.defaultBranch main"
    )
    run_install "Build Tools" "${cmds[@]}"
}

# ─── [9] EDITORS & IDE ───────────────────────────────────────
install_editors() {
    local cmds=(
        "pkg update -y"
        "pkg install nano -y"
        "pkg install vim -y"
        "pkg install neovim -y"
        "pkg install emacs -y"
        "pkg install micro -y"
        "pkg install code-server -y"
        "npm install -g neovim"
        "pip install neovim"
    )
    run_install "Editors & IDE" "${cmds[@]}"
}

# ─── [10] SYSTEM UTILITIES ───────────────────────────────────
install_system() {
    local cmds=(
        "pkg update -y && pkg upgrade -y"
        "pkg install curl -y"
        "pkg install wget -y"
        "pkg install zip -y"
        "pkg install unzip -y"
        "pkg install tar -y"
        "pkg install gzip -y"
        "pkg install bzip2 -y"
        "pkg install xz-utils -y"
        "pkg install nano -y"
        "pkg install vim -y"
        "pkg install htop -y"
        "pkg install tree -y"
        "pkg install tmux -y"
        "pkg install screen -y"
        "pkg install coreutils -y"
        "pkg install findutils -y"
        "pkg install grep -y"
        "pkg install sed -y"
        "pkg install gawk -y"
        "pkg install bc -y"
        "pkg install jq -y"
        "pkg install less -y"
        "pkg install man -y"
        "pkg install file -y"
        "pkg install strace -y"
        "pkg install procps -y"
        "pkg install which -y"
        "pkg install diffutils -y"
        "pkg install patch -y"
        "pkg install rsync -y"
        "pkg install rclone -y"
        "pkg install at -y"
        "pkg install busybox -y"
        "termux-setup-storage"
    )
    run_install "System Utilities" "${cmds[@]}"
}

# ─── [11] MEDIA TOOLS ────────────────────────────────────────
install_media() {
    local cmds=(
        "pkg update -y"
        "pkg install ffmpeg -y"
        "pkg install imagemagick -y"
        "pkg install sox -y"
        "pkg install mpv -y"
        "pkg install yt-dlp -y"
        "pkg install youtube-dl -y"
        "pip install yt-dlp"
        "pip install Pillow"
        "pip install moviepy"
        "pip install pydub"
    )
    run_install "Media Tools" "${cmds[@]}"
}

# ─── [12] LIBRARIES ──────────────────────────────────────────
install_libs() {
    local cmds=(
        "pkg update -y"
        "pkg install openssl -y"
        "pkg install libcurl -y"
        "pkg install libffi -y"
        "pkg install zlib -y"
        "pkg install libjpeg-turbo -y"
        "pkg install libpng -y"
        "pkg install libxml2 -y"
        "pkg install libxslt -y"
        "pkg install boost -y"
        "pkg install readline -y"
        "pkg install ncurses -y"
        "pkg install libiconv -y"
        "pkg install libgmp -y"
        "pkg install libsodium -y"
        "pkg install libuv -y"
        "pkg install pcre -y"
        "pkg install pcre2 -y"
    )
    run_install "Libraries" "${cmds[@]}"
}

# ─── [13] TERMUX SPECIFIC ────────────────────────────────────
install_termux() {
    local cmds=(
        "pkg update -y"
        "pkg install termux-api -y"
        "pkg install termux-tools -y"
        "pkg install termux-auth -y"
        "pkg install termux-services -y"
        "pkg install proot -y"
        "pkg install proot-distro -y"
        "pkg install tsu -y"
        "pkg install busybox -y"
        "termux-setup-storage"
    )
    run_install "Termux Specific Tools" "${cmds[@]}"
}

# ─── [14] SECURITY & CRYPTO ──────────────────────────────────
install_security() {
    local cmds=(
        "pkg update -y"
        "pkg install gnupg -y"
        "pkg install openssl -y"
        "pkg install age -y"
        "pkg install pass -y"
        "pkg install openssh -y"
        "pip install cryptography"
        "pip install pycryptodome"
        "pip install bcrypt"
        "pip install pyotp"
        "pip install passlib"
    )
    run_install "Security & Crypto Tools" "${cmds[@]}"
}

# ─── [15] FUN TOOLS ──────────────────────────────────────────
install_fun() {
    local cmds=(
        "pkg update -y"
        "pkg install figlet -y"
        "pkg install lolcat -y"
        "pkg install cowsay -y"
        "pkg install toilet -y"
        "pkg install cmatrix -y"
        "pkg install sl -y"
        "pkg install fortune -y"
        "pkg install boxes -y"
        "pkg install neofetch -y"
        "pkg install fastfetch -y"
        "pip install asciimatics"
        "pip install rich"
        "pip install colorama"
    )
    run_install "Fun Tools" "${cmds[@]}"
}

# ─── [16] CUSTOM PACKAGE ─────────────────────────────────────
install_custom() {
    clear
    source "$(dirname "$0")/banner.sh"
    show_banner
    echo ""
    print_line
    echo -e "${ORANGE}${BOLD}  CUSTOM PACKAGE INSTALLER${RESET}"
    print_line
    echo ""
    echo -e "  ${ORANGE}[1]${RESET} ${WHITE}pkg install   ${DIM}(Termux package)${RESET}"
    echo -e "  ${ORANGE}[2]${RESET} ${WHITE}pip install   ${DIM}(Python package)${RESET}"
    echo -e "  ${ORANGE}[3]${RESET} ${WHITE}npm install   ${DIM}(Node package)${RESET}"
    echo -e "  ${ORANGE}[0]${RESET} ${RED}Back${RESET}"
    echo ""
    print_line
    echo -ne "\n  ${CYAN}Choose${RESET} ${ORANGE}>${RESET} "
    read -r method

    case $method in
        1)
            echo -ne "\n  ${CYAN}Package name${RESET} ${ORANGE}>${RESET} "
            read -r pkg
            run_install "pkg: $pkg" "pkg install $pkg -y"
            ;;
        2)
            echo -ne "\n  ${CYAN}Package name${RESET} ${ORANGE}>${RESET} "
            read -r pkg
            run_install "pip: $pkg" "pip install $pkg"
            ;;
        3)
            echo -ne "\n  ${CYAN}Package name${RESET} ${ORANGE}>${RESET} "
            read -r pkg
            run_install "npm: $pkg" "npm install -g $pkg"
            ;;
        0) return ;;
        *)
            print_error "Invalid option."
            pause_menu
            ;;
    esac
}
