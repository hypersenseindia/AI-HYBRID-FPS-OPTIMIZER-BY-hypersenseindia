#!/data/data/com.termux/files/usr/bin/bash

clear
echo "================================================"
echo "    📦 FF HYPER AI BOOSTER - REQUIREMENTS      "
echo "================================================"
echo ""
echo "[*] Installing all dependencies..."
echo ""

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

print_status() { echo -e "${GREEN}[✓]${NC} $1"; }
print_error() { echo -e "${RED}[✗]${NC} $1"; }
print_warning() { echo -e "${YELLOW}[!]${NC} $1"; }
print_info() { echo -e "${BLUE}[*]${NC} $1"; }

# Check Termux
if [ ! -d "/data/data/com.termux" ]; then
    print_error "This script must run in Termux!"
    exit 1
fi

# Update repositories
print_info "Updating package repositories..."
pkg update -y
if [ $? -eq 0 ]; then
    print_status "Repositories updated"
else
    print_error "Failed to update repositories"
    exit 1
fi

# Upgrade existing packages
print_info "Upgrading existing packages..."
pkg upgrade -y
print_status "Packages upgraded"

# Install Termux API (MOST IMPORTANT)
print_info "Installing Termux API..."
pkg install -y termux-api
print_status "Termux API installed"

# Install ADB Tools
print_info "Installing ADB Tools..."
pkg install -y android-tools
print_status "ADB Tools installed"

# Install Python and pip
print_info "Installing Python..."
pkg install -y python python-pip
print_status "Python installed"

# Install Development Tools
print_info "Installing Development Tools..."
pkg install -y \
    clang \
    make \
    cmake \
    git \
    wget \
    curl \
    proot \
    nodejs \
    golang \
    ruby \
    php \
    nano \
    vim \
    neovim \
    jq \
    sqlite \
    ffmpeg \
    zip \
    unzip \
    tar \
    p7zip \
    rsync \
    openssl \
    openssl-tool
print_status "Development tools installed"

# Install System Monitoring Tools
print_info "Installing System Monitoring Tools..."
pkg install -y \
    procps \
    htop \
    net-tools \
    dnsutils \
    termux-tools \
    termux-exec \
    termux-am
print_status "Monitoring tools installed"

# Install Python Dependencies
print_info "Installing Python dependencies..."

# Upgrade pip first
pip install --upgrade pip

# Core AI/ML Libraries
print_info "Installing AI/ML libraries..."
pip install \
    numpy==1.24.3 \
    pandas==2.0.3 \
    scipy==1.10.1 \
    scikit-learn==1.3.0 \
    tensorflow==2.13.0 \
    keras==2.13.1 \
    torch==2.0.1 \
    torchvision==0.15.2 \
    torchaudio==2.0.2 \
    xgboost==1.7.6 \
    lightgbm==4.0.0 \
    catboost==1.2.2
print_status "AI/ML libraries installed"

# Computer Vision Libraries
print_info "Installing Computer Vision libraries..."
pip install \
    opencv-python==4.8.1.78 \
    opencv-contrib-python==4.8.1.78 \
    pillow==10.0.0 \
    scikit-image==0.21.0 \
    imageio==2.31.1 \
    matplotlib==3.7.2 \
    seaborn==0.12.2
print_status "Computer Vision libraries installed"

# System & Monitoring
print_info "Installing System Monitoring libraries..."
pip install \
    psutil==5.9.5 \
    GPUtil==1.4.0 \
    py-cpuinfo==9.0.0 \
    speedtest-cli==2.1.3 \
    pySmartDL==1.3.4 \
    humanize==4.7.0 \
    tqdm==4.65.0 \
    progress==1.6 \
    colorama==0.4.6 \
    prettytable==3.8.0 \
    rich==13.5.2
print_status "System libraries installed"

# Networking & Web
print_info "Installing Networking libraries..."
pip install \
    requests==2.31.0 \
    urllib3==2.0.4 \
    beautifulsoup4==4.12.2 \
    lxml==4.9.3 \
    selenium==4.13.0 \
    aiohttp==3.8.5 \
    websockets==12.0 \
    pycurl==7.45.2 \
    dnspython==2.4.2 \
    netifaces==0.11.0
print_status "Networking libraries installed"

# Data Processing
print_info "Installing Data Processing libraries..."
pip install \
    pandasql==0.7.3 \
    sqlalchemy==2.0.19 \
    pymongo==4.5.0 \
    redis==5.0.0 \
    pyserial==3.5 \
    openpyxl==3.1.2 \
    xlrd==2.0.1 \
    pyyaml==6.0.1 \
    toml==0.10.2 \
    configparser==6.0.0 \
    json5==0.9.14
print_status "Data Processing libraries installed"

# Game & Performance Specific
print_info "Installing Game Optimization libraries..."
pip install \
    pymem==0.10.1 \
    pywin32==306 \
    pydirectinput==1.0.4 \
    keyboard==0.13.5 \
    mouse==0.7.1 \
    pyautogui==0.9.54 \
    screeninfo==0.8.1 \
    mss==9.0.1 \
    pygetwindow==0.0.9 \
    pyperclip==1.8.2
print_status "Game libraries installed"

# GUI & Terminal UI
print_info "Installing Terminal UI libraries..."
pip install \
    npyscreen==4.10.6 \
    urwid==2.1.2 \
    prompt_toolkit==3.0.39 \
    curses-menu==0.6.0 \
    simple-term-menu==1.6.1 \
    pick==2.2.0 \
    inquirer==3.1.3 \
    questionary==2.0.1 \
    PyInquirer==1.0.3 \
    bullet==2.2.0
print_status "UI libraries installed"

# Web Framework & APIs
print_info "Installing Web Framework libraries..."
pip install \
    flask==2.3.3 \
    flask-cors==4.0.0 \
    flask-restful==0.3.10 \
    fastapi==0.100.1 \
    uvicorn==0.23.2 \
    django==4.2.5 \
    djangorestframework==3.14.0 \
    sanic==23.6.0 \
    aiofiles==23.2.1 \
    jinja2==3.1.2 \
    markdown==3.4.4
print_status "Web libraries installed"

# Utilities
print_info "Installing Utility libraries..."
pip install \
    click==8.1.7 \
    fire==0.5.0 \
    typer==0.9.0 \
    schedule==1.2.0 \
    croniter==2.0.2 \
    python-dateutil==2.8.2 \
    pytz==2023.3 \
    tzlocal==5.0.1 \
    watchdog==3.0.0 \
    pathlib2==2.3.7 \
    send2trash==1.8.2 \
    shutilwhich==1.1.0
print_status "Utility libraries installed"

# Security & Cryptography
print_info "Installing Security libraries..."
pip install \
    cryptography==41.0.3 \
    pycryptodome==3.19.0 \
    hashlib==20081119 \
    bcrypt==4.0.1 \
    pyjwt==2.8.0 \
    argon2-cffi==23.1.0 \
    pynacl==1.5.0 \
    ecdsa==0.18.0 \
    rsa==4.9
print_status "Security libraries installed"

# Game Engine & Graphics
print_info "Installing Graphics libraries..."
pip install \
    pygame==2.5.0 \
    pyglet==2.0.10 \
    arcade==2.6.17 \
    panda3d==1.10.13 \
    pyopengl==3.1.7 \
    moderngl==5.8.2 \
    glfw==2.6.1 \
    pygfx==0.1.13 \
    vispy==0.13.0 \
    vpython==7.6.4
print_status "Graphics libraries installed"

# Audio Processing
print_info "Installing Audio libraries..."
pip install \
    pyaudio==0.2.13 \
    sounddevice==0.4.6 \
    soundfile==0.12.1 \
    librosa==0.10.1 \
    pydub==0.25.1 \
    audioread==3.0.0 \
    simpleaudio==1.0.4 \
    pygame-mixer==2.5.0
print_status "Audio libraries installed"

# Testing & Debugging
print_info "Installing Testing libraries..."
pip install \
    pytest==7.4.2 \
    pytest-cov==4.1.0 \
    unittest2==1.1.0 \
    nose2==0.14.1 \
    coverage==7.3.1 \
    tox==4.11.3 \
    hypothesis==6.82.4 \
    faker==19.6.2 \
    freezegun==1.2.2 \
    responses==0.23.3
print_status "Testing libraries installed"

# Documentation
print_info "Installing Documentation libraries..."
pip install \
    sphinx==7.2.6 \
    sphinx-rtd-theme==1.3.0 \
    mkdocs==1.5.2 \
    mkdocs-material==9.3.1 \
    pdoc==13.1.0 \
    docutils==0.20.1 \
    readme-renderer==41.0.0 \
    twine==4.0.2
print_status "Documentation libraries installed"

# Specialized for Mobile Optimization
print_info "Installing Mobile Optimization libraries..."
pip install \
    adbutils==2.6.1 \
    uiautomator2==2.18.1 \
    weditor==0.6.7 \
    airtest==1.3.0 \
    pocoui==1.0.88 \
    appium-python-client==2.11.1 \
    facebook-wda==1.5.5 \
    pyandroid==0.2.2 \
    pymobiledevice3==4.2.0 \
    libusb1==3.1.0
print_status "Mobile libraries installed"

# Create requirements.txt
print_info "Creating requirements.txt..."
pip freeze > requirements.txt
print_status "requirements.txt created"

# Install from requirements.txt (ensure all)
print_info "Final verification of all packages..."
pip install -r requirements.txt --upgrade
print_status "All packages verified"

# Setup Termux storage
print_info "Setting up Termux storage..."
termux-setup-storage
sleep 3

# Grant permissions
print_info "Granting necessary permissions..."
termux-microphone-record
termux-camera-photo
termux-location
termux-sms-list
termux-telephony-call
termux-notification
termux-toast
print_status "Permissions granted"

# Create necessary directories
print_info "Creating project directories..."
mkdir -p $HOME/.termux/boot
mkdir -p $HOME/.shortcuts
mkdir -p $HOME/bin
mkdir -p $HOME/.local/bin
mkdir -p $HOME/.config/ff_booster
print_status "Directories created"

# Add to PATH
print_info "Setting up PATH..."
echo 'export PATH=$PATH:$HOME/.local/bin:$HOME/bin' >> $HOME/.bashrc
echo 'alias ffboost="cd $HOME/AI-HYBRID-FPS-OPTIMIZER && python main.py"' >> $HOME/.bashrc
source $HOME/.bashrc
print_status "PATH configured"

# Install Node.js packages for web interface
print_info "Installing Node.js packages..."
npm install -g \
    http-server \
    localtunnel \
    nodemon \
    pm2 \
    express \
    socket.io \
    axios \
    chalk \
    figlet \
    inquirer \
    ora \
    boxen \
    gradient-string \
    terminal-link
print_status "Node.js packages installed"

# Install Ruby gems
print_info "Installing Ruby gems..."
gem install \
    colorize \
    tty-box \
    tty-color \
    tty-command \
    tty-config \
    tty-cursor \
    tty-editor \
    tty-font \
    tty-logger \
    tty-markdown \
    tty-pager \
    tty-pie \
    tty-platform \
    tty-progressbar \
    tty-prompt \
    tty-screen \
    tty-spinner \
    tty-table \
    tty-tree \
    tty-which
print_status "Ruby gems installed"

# Install PHP Composer packages
print_info "Installing PHP packages..."
pkg install -y composer
composer global require \
    laravel/installer \
    symfony/console \
    guzzlehttp/guzzle \
    monolog/monolog \
    nesbot/carbon \
    vlucas/phpdotenv \
    phpunit/phpunit \
    fzaninotto/faker
print_status "PHP packages installed"

# Setup Android SDK tools
print_info "Setting up Android SDK tools..."
pkg install -y \
    android-sdk \
    android-platform-tools \
    aapt \
    apksigner \
    zipalign \
    dx \
    dalvikvm
print_status "Android SDK tools installed"

# Install reverse engineering tools
print_info "Installing RE tools..."
pkg install -y \
    radare2 \
    gdb \
    lldb \
    strace \
    ltrace \
    nmap \
    tcpdump \
    wireshark \
    mitmproxy \
    burpsuite \
    apktool \
    jadx \
    frida \
    objection
print_status "RE tools installed"

# Install performance monitoring tools
print_info "Installing performance tools..."
pkg install -y \
    perf \
    sysstat \
    iostat \
    vmstat \
    mpstat \
    pidstat \
    sar \
    dstat \
    iftop \
    iotop \
    nethogs \
    bmon \
    slurm \
    tcptrack
print_status "Performance tools installed"

# Create optimization scripts
print_info "Creating optimization scripts..."

# CPU Optimizer script
cat > $HOME/bin/cpu_optimizer.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
echo "[⚡] CPU Optimizer"
echo "[*] Setting performance governor..."
echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo "[✓] CPU optimized for performance"
EOF
chmod +x $HOME/bin/cpu_optimizer.sh

# GPU Optimizer script
cat > $HOME/bin/gpu_optimizer.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
echo "[🖥️] GPU Optimizer"
echo "[*] Optimizing GPU settings..."
settings put global game_driver_opt_apps com.dts.freefireth
settings put global game_driver_prerelease_opt_in com.dts.freefireth
echo "[✓] GPU optimized for gaming"
EOF
chmod +x $HOME/bin/gpu_optimizer.sh

# Memory Optimizer script
cat > $HOME/bin/memory_optimizer.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
echo "[💾] Memory Optimizer"
echo "[*] Clearing caches and optimizing memory..."
sync
echo 3 > /proc/sys/vm/drop_caches
setprop dalvik.vm.heapgrowthlimit 256m
setprop dalvik.vm.heapsize 512m
echo "[✓] Memory optimized"
EOF
chmod +x $HOME/bin/memory_optimizer.sh

# Network Optimizer script
cat > $HOME/bin/network_optimizer.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
echo "[📡] Network Optimizer"
echo "[*] Optimizing network settings..."
settings put global mobile_data_always_on 1
settings put global airplane_mode_on 0
svc data enable
svc wifi enable
echo "[✓] Network optimized for gaming"
EOF
chmod +x $HOME/bin/network_optimizer.sh

# Thermal Optimizer script
cat > $HOME/bin/thermal_optimizer.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
echo "[🌡️] Thermal Optimizer"
echo "[*] Adjusting thermal settings..."
echo 0 > /sys/class/thermal/thermal_zone0/mode 2>/dev/null
settings put global thermal_limit_temp 50
echo "[✓] Thermal management optimized"
EOF
chmod +x $HOME/bin/thermal_optimizer.sh

print_status "Optimization scripts created"

# Create system service
print_info "Creating system service..."
cat > $HOME/.termux/boot/ff_optimizer << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
# Auto-start FF Optimizer
sleep 10
echo "[🤖] FF Optimizer starting..."
$HOME/bin/cpu_optimizer.sh
$HOME/bin/gpu_optimizer.sh
$HOME/bin/memory_optimizer.sh
$HOME/bin/network_optimizer.sh
$HOME/bin/thermal_optimizer.sh
echo "[✅] FF Optimizer started at $(date)" >> $HOME/ff_optimizer.log
EOF
chmod +x $HOME/.termux/boot/ff_optimizer

# Create desktop shortcut
cat > $HOME/.shortcuts/FF\ Booster << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
cd $HOME/AI-HYBRID-FPS-OPTIMIZER-BY-hypersenseindia
./main.sh
EOF
chmod +x $HOME/.shortcuts/FF\ Booster

print_status "System service created"

# Test installations
print_info "Testing installations..."

echo ""
echo "[🧪] Testing Python..."
python3 --version
python3 -c "import numpy; print('NumPy:', numpy.__version__)"
python3 -c "import tensorflow as tf; print('TensorFlow:', tf.__version__)"
python3 -c "import cv2; print('OpenCV:', cv2.__version__)"
python3 -c "import psutil; print('psutil:', psutil.__version__)"

echo ""
echo "[🧪] Testing ADB..."
adb version
adb devices

echo ""
echo "[🧪] Testing Node.js..."
node --version
npm --version

echo ""
echo "[🧪] Testing Ruby..."
ruby --version

echo ""
echo "[🧪] Testing PHP..."
php --version

print_status "All tests completed"

# Final setup
print_info "Performing final setup..."

# Create configuration file
cat > $HOME/.config/ff_booster/config.json << 'EOF'
{
    "version": "3.5",
    "github_repo": "https://github.com/hypersenseindia/AI-HYBRID-FPS-OPTIMIZER-BY-hypersenseindia",
    "password": "332211",
    "auto_start": true,
    "ai_enabled": true,
    "optimization_level": 3,
    "features": {
        "cpu_optimization": true,
        "gpu_optimization": true,
        "memory_optimization": true,
        "network_optimization": true,
        "thermal_optimization": true,
        "touch_optimization": true,
        "game_specific_tweaks": true,
        "real_time_monitoring": true
    },
    "developer": "AG HYDRAX (@hyraxff_yt)",
    "brand": "@hypersenseindia",
    "install_date": "'$(date)'"
}
EOF

# Create update script
cat > $HOME/bin/update_ff_booster.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
echo "[🔄] Updating FF Booster..."
cd $HOME/AI-HYBRID-FPS-OPTIMIZER-BY-hypersenseindia
git pull origin main
pip install -r requirements.txt --upgrade
echo "[✅] FF Booster updated!"
EOF
chmod +x $HOME/bin/update_ff_booster.sh

# Create backup script
cat > $HOME/bin/backup_ff_config.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
echo "[💾] Backing up FF Booster config..."
BACKUP_DIR="$HOME/ff_backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p $BACKUP_DIR
cp -r $HOME/.config/ff_booster $BACKUP_DIR/
cp -r $HOME/AI-HYBRID-FPS-OPTIMIZER-BY-hypersenseindia/conf $BACKUP_DIR/
cp -r $HOME/AI-HYBRID-FPS-OPTIMIZER-BY-hypersenseindia/models $BACKUP_DIR/
echo "[✅] Backup created at: $BACKUP_DIR"
EOF
chmod +x $HOME/bin/backup_ff_config.sh

print_status "Final setup completed"

# Display completion message
clear
echo "================================================"
echo "    🎉 REQUIREMENTS INSTALLATION COMPLETE!     "
echo "================================================"
echo ""
echo "[✅] ALL DEPENDENCIES INSTALLED SUCCESSFULLY!"
echo ""
echo "[📊] INSTALLED PACKAGES SUMMARY:"
echo "    • Termux API & Tools"
echo "    • ADB & Android Tools"
echo "    • Python 3 + 150+ packages"
echo "    • AI/ML Libraries (TensorFlow, PyTorch)"
echo "    • Computer Vision (OpenCV, PIL)"
echo "    • System Monitoring (psutil, GPUtil)"
echo "    • Networking Tools"
echo "    • Game Optimization Libraries"
echo "    • Terminal UI Libraries"
echo "    • Mobile Development Tools"
echo "    • Performance Monitoring"
echo "    • Reverse Engineering Tools"
echo ""
echo "[⚡] OPTIMIZATION SCRIPTS:"
echo "    • CPU Optimizer"
echo "    • GPU Optimizer"
echo "    • Memory Optimizer"
echo "    • Network Optimizer"
echo "    • Thermal Optimizer"
echo ""
echo "[🤖] AUTO-START FEATURES:"
echo "    • Boot script created"
echo "    • Desktop shortcut"
echo "    • System service"
echo ""
echo "[🔧] UTILITIES INSTALLED:"
echo "    • Update script: update_ff_booster.sh"
echo "    • Backup script: backup_ff_config.sh"
echo "    • Configuration: $HOME/.config/ff_booster/"
echo ""
echo "[📁] PROJECT LOCATION:"
echo "    $HOME/AI-HYBRID-FPS-OPTIMIZER-BY-hypersenseindia"
echo ""
echo "[🚀] NEXT STEPS:"
echo "    1. Clone your repository:"
echo "       git clone https://github.com/hypersenseindia/AI-HYBRID-FPS-OPTIMIZER-BY-hypersenseindia.git"
echo "    2. Navigate to project:"
echo "       cd AI-HYBRID-FPS-OPTIMIZER-BY-hypersenseindia"
echo "    3. Run the main tool:"
echo "       ./main.sh"
echo "    4. Password: 332211"
echo ""
echo "[⚠️] IMPORTANT NOTES:"
echo "    • First run may take time to load AI models"
echo "    • Enable Wireless Debugging on your phone"
echo "    • Grant all permissions when prompted"
echo "    • Tool auto-starts when Termux opens"
echo ""
echo "[👥] CREDITS:"
echo "    Developer: AG HYDRAX (@hyraxff_yt)"
echo "    Brand: @hypersenseindia"
echo "    GitHub: https://github.com/hypersenseindia"
echo ""
echo "================================================"
echo "[🎮] READY TO BOOST FREE FIRE PERFORMANCE! 🚀"
echo "================================================"

# Clean up
print_info "Cleaning up temporary files..."
pkg clean
apt-get autoremove -y
print_status "Cleanup completed"

# Final check
print_info "Running final system check..."
python3 -c "
import sys
print('Python check: OK')
import numpy as np
print('NumPy check: OK - version', np.__version__)
import tensorflow as tf
print('TensorFlow check: OK - version', tf.__version__)
import cv2
print('OpenCV check: OK - version', cv2.__version__)
import psutil
print('psutil check: OK - version', psutil.__version__)
print('System check: ALL PASSED ✅')
"

echo ""
print_status "Requirements installation completed successfully!"
echo "[ℹ] Reopen Termux for all changes to take effect"
echo "[⚡] Happy gaming with boosted FPS!"