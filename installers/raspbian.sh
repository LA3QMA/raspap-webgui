UPDATE_URL="https://github.com/LA3QMA/PATPiBox/blob/master/"
wget -q ${UPDATE_URL}/installers/common.sh -O /tmp/raspapcommon.sh
source /tmp/raspapcommon.sh && rm -f /tmp/raspapcommon.sh

function update_system_packages() {
    install_log "Updating sources"
    sudo apt-get update || install_error "Unable to update package list"
}

function install_dependencies() {
    install_log "Installing required packages"
    sudo apt-get install lighttpd $php_package git hostapd dnsmasq ax25-tools ax25-apps libhamlib2 libhamlib-utils || install_error "Unable to install dependencies"
}

install_raspap
