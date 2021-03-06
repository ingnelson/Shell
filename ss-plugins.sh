#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH



# shell version
# ====================
SHELL_VERSION="2.5.2"
# ====================


# current path
CUR_DIR=$( pwd )



# base url
methods="Online"
BASE_URL="https://github.com/loyess/Shell/raw/master"
if [ -e plugins ] && [ -e prepare ] && [ -e service ] && [ -e templates ] && [ -e tools ] && [ -e utils ]; then
    methods="Local"
    BASE_URL="." 
fi


# bbr
TEDDYSUN_BBR_SCRIPT_URL="https://git.io/vbUk0"
CHIAKGE_BBR_SCRIPT_URL="https://git.io/vxJ1I"


# Humanization config PATH
HUMAN_CONFIG="/etc/shadowsocks/humanization.conf"


# shadowsocks config
SHADOWSOCKS_CONFIG="/etc/shadowsocks/config.json"

# shadowsocks-libev config and init
SHADOWSOCKS_LIBEV_INSTALL_PATH="/usr/local/bin"
SHADOWSOCKS_LIBEV_BIN_PATH="/usr/local/bin/ss-server"
SHADOWSOCKS_LIBEV_INIT="/etc/init.d/shadowsocks-libev"
SHADOWSOCKS_LIBEV_CENTOS="${BASE_URL}/service/shadowsocks-libev_centos.sh"
SHADOWSOCKS_LIBEV_DEBIAN="${BASE_URL}/service/shadowsocks-libev_debian.sh"

# shadowsocks-rust config and init
SHADOWSOCKS_RUST_INSTALL_PATH="/usr/local/bin"
SHADOWSOCKS_RUST_BIN_PATH="/usr/local/bin/ssserver"
SHADOWSOCKS_RUST_INIT="/etc/init.d/shadowsocks-rust"
SHADOWSOCKS_RUST_CENTOS="${BASE_URL}/service/shadowsocks-rust_centos.sh"
SHADOWSOCKS_RUST_DEBIAN="${BASE_URL}/service/shadowsocks-rust_debian.sh"

# go-shadowsocks2 config and init
GO_SHADOWSOCKS2_INSTALL_PATH="/usr/local/bin"
GO_SHADOWSOCKS2_BIN_PATH="/usr/local/bin/go-shadowsocks2"
GO_SHADOWSOCKS2_INIT="/etc/init.d/go-shadowsocks2"
GO_SHADOWSOCKS2_CENTOS="${BASE_URL}/service/go-shadowsocks2_centos.sh"
GO_SHADOWSOCKS2_DEBIAN="${BASE_URL}/service/go-shadowsocks2_debian.sh"
GO_SHADOWSOCKS2_VERSION_FILE="/etc/shadowsocks/go-shadowsocks2.version"


# shadowsocks-libev dependencies
LIBSODIUM_VERSION="1.0.18"
LIBSODIUM_FILE="libsodium-${LIBSODIUM_VERSION}"
LIBSODIUM_URL="https://github.com/jedisct1/libsodium/releases/download/${LIBSODIUM_VERSION}-RELEASE/libsodium-${LIBSODIUM_VERSION}.tar.gz"

MBEDTLS_VERSION="2.16.6"
MBEDTLS_FILE="mbedtls-${MBEDTLS_VERSION}"
MBEDTLS_URL="https://tls.mbed.org/download/mbedtls-${MBEDTLS_VERSION}-gpl.tgz"


# v2ray-plugin
V2RAY_PLUGIN_INSTALL_PATH="/usr/local/bin"
V2RAY_PLUGIN_BIN_PATH="/usr/local/bin/v2ray-plugin"


# kcptun
KCPTUN_INSTALL_PATH="/usr/local/kcptun"
KCPTUN_BIN_PATH="/usr/local/kcptun/kcptun-server"
KCPTUN_INIT="/etc/init.d/kcptun"
KCPTUN_CONFIG="/etc/kcptun/config.json"
KCPTUN_CENTOS="${BASE_URL}/service/kcptun_centos.sh"
KCPTUN_DEBIAN="${BASE_URL}/service/kcptun_debian.sh"


# simple-obfs
SIMPLE_OBFS_INSTALL_PATH="/usr/local/bin"
SIMPLE_OBFS_BIN_PATH="/usr/local/bin/obfs-server"


# goquiet
GOQUIET_INSTALL_PATH="/usr/local/bin"
GOQUIET_BIN_PATH="/usr/local/bin/gq-server"


# cloak
CLOAK_INSTALL_PATH="/usr/local/bin"
CLOAK_SERVER_BIN_PATH="/usr/local/bin/ck-server"
CLOAK_CLIENT_BIN_PATH="/usr/local/bin/ck-client"
CLOAK_INIT="/etc/init.d/cloak"
CLOAK_CENTOS="${BASE_URL}/service/cloak_centos.sh"
CLOAK_DEBIAN="${BASE_URL}/service/cloak_debian.sh"
CK_DB_PATH="/etc/cloak"
CK_CLIENT_CONFIG="/etc/cloak/ckclient.json"
CK_SERVER_CONFIG="/etc/cloak/ckserver.json"


# mos-tls-tunnel
MTT_VERSION_FILE="/etc/shadowsocks/mtt.version"
MTT_INSTALL_PATH="/usr/local/bin"
MTT_BIN_PATH="/usr/local/bin/mtt-server"


# rabbit-tcp
RABBIT_INSTALL_PATH="/usr/local/bin"
RABBIT_BIN_PATH="/usr/local/bin/rabbit-tcp"
RABBIT_INIT="/etc/init.d/rabbit-tcp"
RABBIT_CONFIG="/etc/rabbit-tcp/config.json"
RABBIT_VERSION_FILE="/etc/rabbit-tcp/rabbit-tcp.version"
RABBIT_CENTOS="${BASE_URL}/service/rabbit-tcp_centos.sh"
RABBIT_DEBIAN="${BASE_URL}/service/rabbit-tcp_debian.sh"


# simple-tls
SIMPLE_TLS_INSTALL_PATH="/usr/local/bin"
SIMPLE_TLS_BIN_PATH="/usr/local/bin/simple-tls"
SIMPLE_TLS_VERSION_FILE="/etc/shadowsocks/simple-tls.version"


# caddy
CADDY_INSTALL_PATH="/usr/local/caddy"
CADDY_BIN_PATH="/usr/local/caddy/caddy"
CADDY_CONF_FILE="/usr/local/caddy/Caddyfile"
CADDY_BASE_URL="https://caddyserver.com/download/linux/amd64"
CADDY_INIT="/etc/init.d/caddy"
ONLINE_CADDY_CENTOS_INIT_URL="${BASE_URL}/service/caddy_centos.sh"
LOCAL_CADDY_DEBIAN_INIT_PATH="./service/caddy_centos.sh"
ONLINE_CADDY_DEBIAN_INIT_URL="${BASE_URL}/service/caddy_debian.sh"
LOCAL_CADDY_DEBIAN_INIT_PATH="./service/caddy_debian.sh"


# nginx
NGINX_BIN_PATH="/usr/sbin/nginx"
NGINX_CONFIG="/etc/nginx/nginx.conf"


# RE
EMAIL_RE="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}$"
DOMAIN_RE="^(www\.)?[a-zA-Z0-9][-a-zA-Z0-9]{0,62}(\.[a-zA-Z0-9][-a-zA-Z0-9]{0,62})+(:\d+)*(\/\w+\.\w+)*$"
IPV4_RE="^((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])$"
IPV4_PORT_RE="^((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\:443$"
HTTPS_DOMAIN_RE="^(https:\/\/)?(www\.)?[a-zA-Z0-9][-a-zA-Z0-9]{0,62}(\.[a-zA-Z0-9][-a-zA-Z0-9]{0,62})+(:\d+)*(\/\w+\.\w+)*$"
IPV6_RE="^\s*((([0-9A-Fa-f]{1,4}:){7}(([0-9A-Fa-f]{1,4})|:))|(([0-9A-Fa-f]{1,4}:){6}(:|((25[0-5]|2[0-4]\d|[01]?\d{1,2})(\.(25[0-5]|2[0-4]\d|[01]?\d{1,2})){3})|(:[0-9A-Fa-f]{1,4})))|(([0-9A-Fa-f]{1,4}:){5}((:((25[0-5]|2[0-4]\d|[01]?\d{1,2})(\.(25[0-5]|2[0-4]\d|[01]?\d{1,2})){3})?)|((:[0-9A-Fa-f]{1,4}){1,2})))|(([0-9A-Fa-f]{1,4}:){4}(:[0-9A-Fa-f]{1,4}){0,1}((:((25[0-5]|2[0-4]\d|[01]?\d{1,2})(\.(25[0-5]|2[0-4]\d|[01]?\d{1,2})){3})?)|((:[0-9A-Fa-f]{1,4}){1,2})))|(([0-9A-Fa-f]{1,4}:){3}(:[0-9A-Fa-f]{1,4}){0,2}((:((25[0-5]|2[0-4]\d|[01]?\d{1,2})(\.(25[0-5]|2[0-4]\d|[01]?\d{1,2})){3})?)|((:[0-9A-Fa-f]{1,4}){1,2})))|(([0-9A-Fa-f]{1,4}:){2}(:[0-9A-Fa-f]{1,4}){0,3}((:((25[0-5]|2[0-4]\d|[01]?\d{1,2})(\.(25[0-5]|2[0-4]\d|[01]?\d{1,2})){3})?)|((:[0-9A-Fa-f]{1,4}){1,2})))|(([0-9A-Fa-f]{1,4}:)(:[0-9A-Fa-f]{1,4}){0,4}((:((25[0-5]|2[0-4]\d|[01]?\d{1,2})(\.(25[0-5]|2[0-4]\d|[01]?\d{1,2})){3})?)|((:[0-9A-Fa-f]{1,4}){1,2})))|(:(:[0-9A-Fa-f]{1,4}){0,5}((:((25[0-5]|2[0-4]\d|[01]?\d{1,2})(\.(25[0-5]|2[0-4]\d|[01]?\d{1,2})){3})?)|((:[0-9A-Fa-f]{1,4}){1,2})))|(((25[0-5]|2[0-4]\d|[01]?\d{1,2})(\.(25[0-5]|2[0-4]\d|[01]?\d{1,2})){3})))(%.+)?\s*$"


# Font color and background color
Green="\033[32m" && Red="\033[31m" && Yellow="\033[0;33m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && suffix="\033[0m"
Info="${Green}[信息]${suffix}"
Error="${Red}[错误]${suffix}"
Point="${Red}[提示]${suffix}"
Tip="${Green}[注意]${suffix}"
Warning="${Yellow}[警告]${suffix}"
Separator_1="——————————————————————————————"






[[ $EUID -ne 0 ]] && echo -e "[${Red}Error${suffix}] This script must be run as root!" && exit 1


usage() {
	cat >&1 <<-EOF

  请使用: ./ss-plugins.sh [options...] [args...]
    
    选项<options>包括:
        install          安装
        uninstall        卸载
        update           升级
        start            启动
        stop             关闭
        restart          重启
        status           查看状态
        script           升级脚本
        show             显示可视化配置
        log              查看日志文件
        uid              为cloak添加一个新的uid用户
        link             用新添加的uid生成一个新的SS://链接
        scan             用ss://链接在当前终端上生成一个可供扫描的二维码
        help             打印帮助信息并退出
    
  [注意] uid和link选项仅在搭配安装cloak的情况下使用.
  
  
	EOF

    exit $1
}

menu_status(){
    local BIN_PATH=$1
    local SS_PID=$2
    local NoInstall=" 当前状态: ${Red}未安装${suffix}"
    local InstallStart=" 当前状态: ${Green}已安装${suffix} 并 ${Green}已启动${suffix}"
    local InstallNoStart=" 当前状态: ${Green}已安装${suffix} 但 ${Red}未启动${suffix}"
    
    if [[ -e ${BIN_PATH} ]] && [[ -e ${V2RAY_PLUGIN_BIN_PATH} ]] && [[ -e ${CADDY_BIN_PATH}  ]]; then
        V2_PID=`ps -ef |grep -v grep | grep v2ray-plugin |awk '{print $2}'`
        CADDY_PID=`ps -ef |grep -v grep | grep caddy |awk '{print $2}'`
        
        if [[ ! -z ${SS_PID} ]] && [[ ! -z ${V2_PID} ]] && [[ ! -z ${CADDY_PID} ]]; then
            echo -e "${InstallStart}"
        else
            echo -e "${InstallNoStart}"
        fi
    elif [[ -e ${BIN_PATH} ]] && [[ -e ${V2RAY_PLUGIN_BIN_PATH} ]] && [[ -e ${NGINX_BIN_PATH}  ]]; then
        V2_PID=`ps -ef |grep -v grep | grep v2ray-plugin |awk '{print $2}'`
        NGINX_PID=`ps -ef |grep -v grep | grep nginx.conf |awk '{print $2}'`
        
        if [[ ! -z ${SS_PID} ]] && [[ ! -z ${V2_PID} ]] && [[ ! -z ${NGINX_PID} ]]; then
            echo -e "${InstallStart}"
        else
            echo -e "${InstallNoStart}"
        fi
    elif [[ -e ${BIN_PATH} ]] && [[ -e ${V2RAY_PLUGIN_BIN_PATH} ]]; then
        V2_PID=`ps -ef |grep -v grep | grep v2ray-plugin |awk '{print $2}'`
        
        if [[ ! -z ${SS_PID} ]] && [[ ! -z ${V2_PID} ]]; then
            echo -e "${InstallStart}"
        else
            echo -e "${InstallNoStart}"
        fi
    elif [[ -e ${BIN_PATH} ]] && [[ -e ${KCPTUN_BIN_PATH} ]]; then
        KP_PID=`ps -ef |grep -v grep | grep kcptun-server |awk '{print $2}'`
        
        if [[ ! -z ${SS_PID} ]] && [[ ! -z ${KP_PID} ]]; then
            echo -e "${InstallStart}"
        else
            echo -e "${InstallNoStart}"
        fi
    elif [[ -e ${BIN_PATH} ]] && [[ -e ${SIMPLE_OBFS_BIN_PATH} ]]; then
        OBFS_PID=`ps -ef |grep -v grep | grep obfs-server |awk '{print $2}'`
        
        if [[ ! -z ${SS_PID} ]] && [[ ! -z ${OBFS_PID} ]]; then
            echo -e "${InstallStart}"
        else
            echo -e "${InstallNoStart}"
        fi
    elif [[ -e ${BIN_PATH} ]] && [[ -e ${GOQUIET_BIN_PATH} ]]; then    
        GQ_PID=`ps -ef |grep -v grep | grep gq-server |awk '{print $2}'`
        
        if [[ ! -z ${SS_PID} ]] && [[ ! -z ${GQ_PID} ]]; then
            echo -e "${InstallStart}"
        else
            echo -e "${InstallNoStart}"
        fi
    elif [[ -e ${BIN_PATH} ]] && [[ -e ${CLOAK_SERVER_BIN_PATH} ]]; then
        CK_PID=`ps -ef |grep -v grep | grep ck-server |awk '{print $2}'`
        
        if [[ ! -z ${SS_PID} ]] && [[ ! -z ${CK_PID} ]]; then
            echo -e "${InstallStart}"
        else
            echo -e "${InstallNoStart}"
        fi
    elif [[ -e ${BIN_PATH} ]] && [[ -e ${MTT_BIN_PATH} ]] && [[ -e ${CADDY_BIN_PATH}  ]]; then
        MTT_PID=`ps -ef |grep -v grep | grep mtt-server |awk '{print $2}'`
        CADDY_PID=`ps -ef |grep -v grep | grep caddy |awk '{print $2}'`
        
        if [[ ! -z ${SS_PID} ]] && [[ ! -z ${MTT_PID} ]] && [[ ! -z ${CADDY_PID} ]]; then
            echo -e "${InstallStart}"
        else
            echo -e "${InstallNoStart}"
        fi
    elif [[ -e ${BIN_PATH} ]] && [[ -e ${MTT_BIN_PATH} ]] && [[ -e ${NGINX_BIN_PATH}  ]]; then
        MTT_PID=`ps -ef |grep -v grep | grep mtt-server |awk '{print $2}'`
        NGINX_PID=`ps -ef |grep -v grep | grep nginx.conf |awk '{print $2}'`
        
        if [[ ! -z ${SS_PID} ]] && [[ ! -z ${MTT_PID} ]] && [[ ! -z ${NGINX_PID} ]]; then
            echo -e "${InstallStart}"
        else
            echo -e "${InstallNoStart}"
        fi
    elif [[ -e ${BIN_PATH} ]] && [[ -e ${MTT_BIN_PATH} ]]; then    
        MTT_PID=`ps -ef |grep -v grep | grep mtt-server |awk '{print $2}'`
        
        if [[ ! -z ${SS_PID} ]] && [[ ! -z ${MTT_PID} ]]; then
            echo -e "${InstallStart}"
        else
            echo -e "${InstallNoStart}"
        fi
    elif [[ -e ${BIN_PATH} ]] && [[ -e ${RABBIT_BIN_PATH} ]]; then
        RABBIT_PID=`ps -ef |grep -v grep | grep rabbit-tcp |awk '{print $2}'`
        
        if [[ ! -z ${SS_PID} ]] && [[ ! -z ${RABBIT_PID} ]]; then
            echo -e "${InstallStart}"
        else
            echo -e "${InstallNoStart}"
        fi
    elif [[ -e ${BIN_PATH} ]] && [[ -e ${SIMPLE_TLS_BIN_PATH} ]]; then
        SIMPLE_TLS_PID=`ps -ef |grep -v grep | grep simple-tls |awk '{print $2}'`

        if [[ ! -z ${SS_PID} ]] && [[ ! -z ${SIMPLE_TLS_PID} ]]; then
            echo -e "${InstallStart}"
        else
            echo -e "${InstallNoStart}"
        fi
    elif [[ -e ${BIN_PATH} ]]; then
        if [[ ! -z ${SS_PID} ]]; then
            echo -e "${InstallStart}"
        else
            echo -e "${InstallNoStart}"
        fi
    else
        echo -e "${NoInstall}"
    fi
}

improt_package(){
    local package=$1
    local sh_file=$2
    
    if [ ! "$(command -v curl)" ]; then
        package_install "curl" > /dev/null 2>&1
    fi
    
    if [[ ${methods} == "Online" ]]; then
        source <(curl -sL ${BASE_URL}/${package}/${sh_file})
    else
        cd ${CUR_DIR}
        source ${BASE_URL}/${package}/${sh_file}
    fi
}

package_install(){
    local package_name=$1
    
    if check_sys packageManager yum; then
        yum install -y $1 > /dev/null 2>&1
        if [ $? -ne 0 ]; then
            echo -e "${Error} 安装 $1 失败."
            exit 1
        fi
    elif check_sys packageManager apt; then
        apt-get -y update > /dev/null 2>&1
        apt-get -y install $1 > /dev/null 2>&1
        if [ $? -ne 0 ]; then
            echo -e "${Error} 安装 $1 失败."
            exit 1
        fi
    fi
    echo -e "${Info} $1 安装完成."
}

disable_selinux(){
    if [ -s /etc/selinux/config ] && grep -q 'SELINUX=enforcing' /etc/selinux/config; then
        sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
        setenforce 0
    fi
}

install_check(){
    if check_sys packageManager yum || check_sys packageManager apt; then
        if centosversion 5; then
            return 1
        fi
        return 0
    else
        return 1
    fi
}

is_ipv4_or_ipv6(){
    ip=$1
    
    if [ -n "$(echo $ip | grep -E $IPV4_RE)" ] || [ -n "$(echo $ip | grep -E $IPV6_RE)" ]; then
        return 0
    else
        return 1
    fi
}

version_ge(){
    test "$(echo "$@" | tr " " "\n" | sort -rV | head -n 1)" == "$1"
}

version_gt(){
    test "$(echo "$@" | tr " " "\n" | sort -V | head -n 1)" != "$1"
}

check_sys(){
    local checkType=$1
    local value=$2

    local release=''
    local systemPackage=''

    if [[ -f /etc/redhat-release ]]; then
        release="centos"
        systemPackage="yum"
    elif grep -Eqi "debian|raspbian" /etc/issue; then
        release="debian"
        systemPackage="apt"
    elif grep -Eqi "ubuntu" /etc/issue; then
        release="ubuntu"
        systemPackage="apt"
    elif grep -Eqi "centos|red hat|redhat" /etc/issue; then
        release="centos"
        systemPackage="yum"
    elif grep -Eqi "debian|raspbian" /proc/version; then
        release="debian"
        systemPackage="apt"
    elif grep -Eqi "ubuntu" /proc/version; then
        release="ubuntu"
        systemPackage="apt"
    elif grep -Eqi "centos|red hat|redhat" /proc/version; then
        release="centos"
        systemPackage="yum"
    fi

    if [[ "${checkType}" == "sysRelease" ]]; then
        if [ "${value}" == "${release}" ]; then
            return 0
        else
            return 1
        fi
    elif [[ "${checkType}" == "packageManager" ]]; then
        if [ "${value}" == "${systemPackage}" ]; then
            return 0
        else
            return 1
        fi
    fi
}

check_latest_version(){
    local current_v=$1
    local latest_v=$2
    if version_gt ${latest_v} ${current_v}; then
        return 0
    else
        return 1
    fi
}

check_port_occupy(){
    local PROT=$1
    
    if [ ! "$(command -v lsof)" ]; then
        package_install "lsof" > /dev/null 2>&1
    fi
    
    if [[ `lsof -i:"${PROT}" | grep -v google_ | grep -v COMMAND | wc -l` -ne 0 ]];then
        # Occupied
        return 0
    else
        # Unoccupied
        return 1
    fi
}

check_script_update(){
    SHELL_VERSION_NEW=$(wget --no-check-certificate -qO- "https://git.io/fjlbl"|grep 'SHELL_VERSION="'|awk -F "=" '{print $NF}'|sed 's/\"//g'|head -1)
    [[ -z ${SHELL_VERSION_NEW} ]] && echo -e "${Error} 无法链接到 Github !" && exit 0
    if version_gt ${SHELL_VERSION_NEW} ${SHELL_VERSION}; then
        echo
        echo -e "${Green}当前脚本版本为：${SHELL_VERSION} 检测到有新版本可更新.${suffix}"
        echo -e "按任意键开始…或按Ctrl+C取消"
        char=`get_char`
        wget -N --no-check-certificate -O ss-plugins.sh "https://git.io/fjlbl" && chmod +x ss-plugins.sh
        echo -e "脚本已更新为最新版本[ ${SHELL_VERSION_NEW} ] !(注意：因为更新方式为直接覆盖当前运行的脚本，所以可能下面会提示一些报错，无视即可)" && exit 0
    else
        echo
        echo -e "${Info} 当前脚本版本为: ${SHELL_VERSION} 未检测到更新版本."
        echo
    fi
}

check_ss_port(){
    local SS_PORT=$1
    while true
    do
        if [[ ${SS_PORT} -ne "443" ]]; then
            echo -e "${Tip} SS-libev端口为${Green}${shadowsocksport}${suffix}"
            echo
            break
        fi
        
        gen_random_prot
        if check_port_occupy ${ran_prot}; then
            continue
        fi
        
        shadowsocksport=${ran_prot}
        echo -e "${Tip} SS-libev端口已由${Red}443${suffix}重置为${Green}${shadowsocksport}${suffix}"
        echo  
        break
    done
}

choose_script_bbr(){
    echo
    echo -e "请选择BBR的安装脚本"
    echo
    echo -e "    ${Green}1.${suffix} 秋水逸冰-BBR"
    echo -e "    ${Green}2.${suffix} BBR|BBR魔改|BBRplus|Lotserver版本"
    echo && read -e -p "请输入数字 [1-2]：" bbr_menu_num
    case "${bbr_menu_num}" in
        1)
            source <(curl -sL ${TEDDYSUN_BBR_SCRIPT_URL})
            ;;
        2)
            source <(curl -sL ${CHIAKGE_BBR_SCRIPT_URL})
            ;;
        *)
            echo -e "${Error} 请输入正确的数字 [1-2]"
            ;;
    esac
}

choose_caddy_extension(){
    local libev_v2ray=$1
    
    improt_package "tools" "caddy_install.sh"
    if [[ ${libev_v2ray} == "4" ]]; then
        install_caddy
    elif [[ ${libev_v2ray} == "5" ]]; then
        install_caddy "tls.dns.cloudflare"
    fi
}

add_more_entropy(){
    # Ubuntu series is started by default after installation
    # Debian series needs to add configuration to start after installation
    # CentOS 6 is installed by default but not started. CentOS 7 is not started by default after installation. CentOS 8 is installed and started by default.
    local ENTROPY_SIZE_BEFORE=$(cat /proc/sys/kernel/random/entropy_avail)
    if [[ ${ENTROPY_SIZE_BEFORE} -lt 1000 ]]; then
        echo -e "${Info} 安装rng-tools之前熵池的熵值为${Green}${ENTROPY_SIZE_BEFORE}${suffix}"
        if [[ ! $(command -v rngd) ]]; then
            package_install "rng-tools"
        fi
        if centosversion 6; then
            chkconfig --add rngd
            chkconfig rngd on
            service rngd start > /dev/null 2>&1
        elif centosversion 7 || centosversion 8; then
            systemctl enable rngd
            systemctl start rngd > /dev/null 2>&1
        elif check_sys sysRelease debian; then
            update-rc.d -f rng-tools defaults
            sed -i '/^HRNGDEVICE/'d /etc/default/rng-tools
            echo "HRNGDEVICE=/dev/urandom" >> /etc/default/rng-tools
            systemctl start rng-tools > /dev/null 2>&1
        fi
        sleep 5
        local ENTROPY_SIZE_BEHIND=$(cat /proc/sys/kernel/random/entropy_avail)
        echo -e "${Info} 安装rng-tools之后熵池的熵值为${Green}${ENTROPY_SIZE_BEHIND}${suffix}"
    else
        echo -e "${Info} 当前熵池熵值大于或等于1000，未进行更多添加."
    fi 
}

get_ip(){
    local IP=$( ip addr | egrep -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | egrep -v "^192\.168|^172\.1[6-9]\.|^172\.2[0-9]\.|^172\.3[0-2]\.|^10\.|^127\.|^255\.|^0\." | head -n 1 )
    [ -z ${IP} ] && IP=$( wget -qO- -t1 -T2 ipv4.icanhazip.com )
    [ -z ${IP} ] && IP=$( wget -qO- -t1 -T2 ipinfo.io/ip )
    echo ${IP}
}

get_ipv6(){
    local ipv6=$(wget -qO- -t1 -T2 ipv6.icanhazip.com)
    [ -z ${ipv6} ] && return 1 || return 0
}



get_char(){
    SAVEDSTTY=$(stty -g)
    stty -echo
    stty cbreak
    dd if=/dev/tty bs=1 count=1 2> /dev/null
    stty -raw
    stty echo
    stty $SAVEDSTTY
}

get_str_base64_encode(){
    echo -n $1 | base64 -w0
}

get_str_replace(){
    echo -n $1 | sed 's/:/%3A/g;s/;/%3B/g;s/=/%3D/g;s/\//%2F/g'
}

gen_random_prot(){
    ran_prot=$(shuf -i 9000-19999 -n 1)
}

gen_random_str(){
    ran_str8=$(head -c 100 /dev/urandom | tr -dc a-z0-9A-Z |head -c 12)
    ran_str16=$(head -c 100 /dev/urandom | tr -dc a-z0-9A-Z |head -c 16)
}

gen_credentials(){
    while true
    do
        ckauid=$(ck-server -u)
        IFS=, read ckpub ckpv <<< $(ck-server -k)
        
        # filter "+" from ckauid and ckpub
        if [[ $(echo ${ckauid} | grep "+") || $(echo ${ckpub} | grep "+") ]]; then
            continue
        fi
        break
    done
}

gen_credentials_cca(){
    local domain=$1
    if [[ ${domainType} = Other ]]; then
        cerPath="/etc/simple-tls/${domain}.cert"
        keyPath="/etc/simple-tls/${domain}.key"
        if [ ! -d "$(dirname ${cerPath})" ]; then
            mkdir -p $(dirname ${cerPath})
        fi
        simple-tls -gen-cert -n ${domain} -key ${keyPath} -cert ${cerPath}
        base64Cert=$(cat ${cerPath} | base64 -w0 | sed 's/=//g')
    fi
}

get_version(){
    if [[ -s /etc/redhat-release ]]; then
        grep -oE  "[0-9.]+" /etc/redhat-release
    else
        grep -oE  "[0-9.]+" /etc/issue
    fi
}

centosversion(){
    if check_sys sysRelease centos; then
        local code=$1
        local version="$(get_version)"
        local main_ver=${version%%.*}
        if [ "$main_ver" == "$code" ]; then
            return 0
        else
            return 1
        fi
    else
        return 1
    fi
}

config_firewall(){
    local PORT=$1

    if centosversion 6; then
        /etc/init.d/iptables status > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            if ! $(iptables -L -n | grep -q ${PORT}); then
                iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport ${PORT} -j ACCEPT
                iptables -I INPUT -m state --state NEW -m udp -p udp --dport ${PORT} -j ACCEPT
                /etc/init.d/iptables save
                /etc/init.d/iptables restart
            fi
        else
            echo -e "${Warning} iptables看起来没有运行或没有安装，请在必要时手动启用端口 ${PORT}"
        fi
    elif centosversion 7 || centosversion 8; then
        systemctl status firewalld > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            if ! $(firewall-cmd --list-all | grep -q ${PORT}); then
                firewall-cmd --permanent --zone=public --add-port=${PORT}/tcp
                firewall-cmd --permanent --zone=public --add-port=${PORT}/udp
                firewall-cmd --reload
            fi
        else
            echo -e "${Warning} firewalld看起来没有运行或没有安装，请在必要时手动启用端口 ${PORT}"
        fi
    fi
}

config_firewall_logic(){
    if [[ ${plugin_num} == "2" ]] || [[ ${plugin_num} == "7" ]]; then
        config_firewall "${listen_port}"
    elif [[ ${libev_v2ray} = "4" ]] || [[ ${libev_v2ray} = "5" ]] || [[ ${plugin_num} == "5" ]] || [[ ${isEnableWeb} = enable ]]; then
        config_firewall 443
    else
        config_firewall "${shadowsocksport}"
    fi
}

download(){
    local filename=$(basename $1)
    if [ -e ${1} ]; then
        echo "${filename} [已存在.]"
    else
        echo "${filename} 当前目录中不存在, 现在开始下载."
        wget --no-check-certificate -c -t3 -T60 -O ${1} ${2}
        if [ $? -ne 0 ]; then
            echo -e "${Error} 下载 ${filename} 失败."
            exit 1
        fi
    fi
}

download_service_file(){
    local filename_path=$1
    local online_centos_url=$2
    local local_centos_file_path=$3
    local online_debian_url=$4
    local local_debian_file_path=$5
    
    if check_sys packageManager yum; then
        if [[ ${methods} == "Online" ]]; then
            download ${filename_path} ${online_centos_url}
        else
            cp -rf ${local_centos_file_path} ${filename_path}
        fi
    elif check_sys packageManager apt; then
        if [[ ${methods} == "Online" ]]; then
            download ${filename_path} ${online_debian_url}
        else
            cp -rf ${local_debian_file_path} ${filename_path}
        fi
    fi
}

download_ss_file(){
    cd ${CUR_DIR}
    if [[ ${SS_VERSION} = "ss-libev" ]]; then
        # Download Shadowsocks-libev
        libev_ver=$(wget --no-check-certificate -qO- https://api.github.com/repos/shadowsocks/shadowsocks-libev/releases | grep -o '"tag_name": ".*"' | head -n 1| sed 's/"//g;s/v//g' | sed 's/tag_name: //g')
        [ -z ${libev_ver} ] && echo -e "${Error} 获取 shadowsocks-libev 最新版本失败." && exit 1
        local SS_INIT_CENTOS="./service/shadowsocks-libev_centos.sh"
        local SS_INIT_DEBIAN="./service/shadowsocks-libev_debian.sh"
        
        shadowsocks_libev_file="shadowsocks-libev-${libev_ver}"
        shadowsocks_libev_url="https://github.com/shadowsocks/shadowsocks-libev/releases/download/v${libev_ver}/shadowsocks-libev-${libev_ver}.tar.gz"
        download "${shadowsocks_libev_file}.tar.gz" "${shadowsocks_libev_url}"
        download_service_file ${SHADOWSOCKS_LIBEV_INIT} ${SHADOWSOCKS_LIBEV_CENTOS} ${SS_INIT_CENTOS} ${SHADOWSOCKS_LIBEV_DEBIAN} ${SS_INIT_DEBIAN}
    elif [[ ${SS_VERSION} = "ss-rust" ]]; then
        # Download Shadowsocks-libev
        rust_ver=$(wget --no-check-certificate -qO- https://api.github.com/repos/shadowsocks/shadowsocks-rust/releases | grep -o '"tag_name": ".*"' | head -n 1| sed 's/"//g;s/v//g' | sed 's/tag_name: //g')
        [ -z ${rust_ver} ] && echo -e "${Error} 获取 shadowsocks-rust 最新版本失败." && exit 1
        local SS_INIT_CENTOS="./service/shadowsocks-rust_centos.sh"
        local SS_INIT_DEBIAN="./service/shadowsocks-rust_debian.sh"
        
        shadowsocks_rust_file="shadowsocks-v${rust_ver}-stable.x86_64-unknown-linux-musl"
        shadowsocks_rust_url="https://github.com/shadowsocks/shadowsocks-rust/releases/download/v${rust_ver}/shadowsocks-v${rust_ver}-stable.x86_64-unknown-linux-musl.tar.xz"
        download "${shadowsocks_rust_file}.tar.xz" "${shadowsocks_rust_url}"
        download_service_file ${SHADOWSOCKS_RUST_INIT} ${SHADOWSOCKS_RUST_CENTOS} ${SS_INIT_CENTOS} ${SHADOWSOCKS_RUST_DEBIAN} ${SS_INIT_DEBIAN}
    elif [[ ${SS_VERSION} = "go-ss2" ]]; then
        # Download Go-shadowsocks2
        go_ver=$(wget --no-check-certificate -qO- https://api.github.com/repos/shadowsocks/go-shadowsocks2/releases | grep -o '"tag_name": ".*"' | head -n 1| sed 's/"//g;s/v//g' | sed 's/tag_name: //g')
        [ -z ${go_ver} ] && echo -e "${Error} 获取 shadowsocks-rust 最新版本失败." && exit 1
        local SS_INIT_CENTOS="./service/go-shadowsocks2_centos.sh"
        local SS_INIT_DEBIAN="./service/go-shadowsocks2_debian.sh"

        # wriet version num
        if [ ! -d "$(dirname ${GO_SHADOWSOCKS2_VERSION_FILE})" ]; then
            mkdir -p $(dirname ${GO_SHADOWSOCKS2_VERSION_FILE})
        fi
        echo ${go_ver} > ${GO_SHADOWSOCKS2_VERSION_FILE}
        go_shadowsocks2_file="shadowsocks2-linux"
        go_shadowsocks2_url="https://github.com/shadowsocks/go-shadowsocks2/releases/download/v${go_ver}/shadowsocks2-linux.gz"
        download "${go_shadowsocks2_file}.gz" "${go_shadowsocks2_url}"
        download_service_file ${GO_SHADOWSOCKS2_INIT} ${GO_SHADOWSOCKS2_CENTOS} ${SS_INIT_CENTOS} ${GO_SHADOWSOCKS2_DEBIAN} ${SS_INIT_DEBIAN}
    fi
}

download_plugins_file(){
    cd ${CUR_DIR}
    if [[ "${plugin_num}" == "1" ]]; then        
        # Download v2ray-plugin
        v2ray_plugin_ver=$(wget --no-check-certificate -qO- https://api.github.com/repos/shadowsocks/v2ray-plugin/releases | grep -o '"tag_name": ".*"' |head -n 1| sed 's/"//g;s/v//g' | sed 's/tag_name: //g')
        [ -z ${v2ray_plugin_ver} ] && echo -e "${Error} 获取 v2ray-plugin 最新版本失败." && exit 1
        v2ray_plugin_file="v2ray-plugin-linux-amd64-v${v2ray_plugin_ver}"
        v2ray_plugin_url="https://github.com/shadowsocks/v2ray-plugin/releases/download/v${v2ray_plugin_ver}/v2ray-plugin-linux-amd64-v${v2ray_plugin_ver}.tar.gz"
        download "${v2ray_plugin_file}.tar.gz" "${v2ray_plugin_url}"
        
    elif [[ "${plugin_num}" == "2" ]]; then        
        # Download kcptun
        kcptun_ver=$(wget --no-check-certificate -qO- https://api.github.com/repos/xtaci/kcptun/releases | grep -o '"tag_name": ".*"' |head -n 1| sed 's/"//g;s/v//g' | sed 's/tag_name: //g')
        [ -z ${kcptun_ver} ] && echo -e "${Error} 获取 kcptun 最新版本失败." && exit 1
        kcptun_file="kcptun-linux-amd64-${kcptun_ver}"
        kcptun_url="https://github.com/xtaci/kcptun/releases/download/v${kcptun_ver}/kcptun-linux-amd64-${kcptun_ver}.tar.gz"
        download "${kcptun_file}.tar.gz" "${kcptun_url}"
        download_service_file ${KCPTUN_INIT} ${KCPTUN_CENTOS} "./service/kcptun_centos.sh" ${KCPTUN_DEBIAN} "./service/kcptun_debian.sh"
        
    elif [[ "${plugin_num}" == "4" ]]; then        
        # Download goquiet
        goquiet_ver=$(wget --no-check-certificate -qO- https://api.github.com/repos/cbeuw/GoQuiet/releases | grep -o '"tag_name": ".*"' |head -n 1| sed 's/"//g;s/v//g' | sed 's/tag_name: //g')
        [ -z ${goquiet_ver} ] && echo -e "${Error} 获取 goquiet 最新版本失败." && exit 1
        goquiet_file="gq-server-linux-amd64-${goquiet_ver}"
        goquiet_url="https://github.com/cbeuw/GoQuiet/releases/download/v${goquiet_ver}/gq-server-linux-amd64-${goquiet_ver}"
        download "${goquiet_file}" "${goquiet_url}"
        
    elif [[ "${plugin_num}" == "5" ]]; then
        # Download cloak server
        cloak_ver=$(wget --no-check-certificate -qO- https://api.github.com/repos/cbeuw/Cloak/releases | grep -o '"tag_name": ".*"' |head -n 1| sed 's/"//g;s/v//g' | sed 's/tag_name: //g')
        [ -z ${cloak_ver} ] && echo -e "${Error} 获取 cloak 最新版本失败." && exit 1
        # cloak_ver="2.1.1"
        cloak_file="ck-server-linux-amd64-${cloak_ver}"
        cloak_url="https://github.com/cbeuw/Cloak/releases/download/v${cloak_ver}/ck-server-linux-amd64-${cloak_ver}"
        download "${cloak_file}" "${cloak_url}"
        download_service_file ${CLOAK_INIT} ${CLOAK_CENTOS} "./service/cloak_centos.sh" ${CLOAK_DEBIAN} "./service/cloak_debian.sh"
    
    elif [[ "${plugin_num}" == "6" ]]; then
        # Download mos-tls-tunnel
        mtt_ver=$(wget --no-check-certificate -qO- https://api.github.com/repos/IrineSistiana/mos-tls-tunnel/releases | grep -o '"tag_name": ".*"' |head -n 1| sed 's/"//g;s/v//g' | sed 's/tag_name: //g')
        [ -z ${mtt_ver} ] && echo -e "${Error} 获取 mos-tls-tunnel 最新版本失败." && exit 1
        # wriet version num
        if [ ! -d "$(dirname ${SHADOWSOCKS_CONFIG})" ]; then
            mkdir -p $(dirname ${SHADOWSOCKS_CONFIG})
        fi
        echo ${mtt_ver} > ${MTT_VERSION_FILE}
        mtt_file="mos-tls-tunnel-linux-amd64"
        mtt_url="https://github.com/IrineSistiana/mos-tls-tunnel/releases/download/v${mtt_ver}/mos-tls-tunnel-linux-amd64.zip"
        download "${mtt_file}.zip" "${mtt_url}"
    elif [[ "${plugin_num}" == "7" ]]; then
        # Download rabbit-tcp
        rabbit_ver=$(wget --no-check-certificate -qO- https://api.github.com/repos/ihciah/rabbit-tcp/releases | grep -o '"tag_name": ".*"' |head -n 1| sed 's/"//g;s/v//g' | sed 's/tag_name: //g')
        [ -z ${rabbit_ver} ] && echo -e "${Error} 获取 rabbit-tcp 最新版本失败." && exit 1
        # wriet version num
        if [ ! -d "$(dirname ${RABBIT_VERSION_FILE})" ]; then
            mkdir -p $(dirname ${RABBIT_VERSION_FILE})
        fi
        echo ${rabbit_ver} > ${RABBIT_VERSION_FILE}
        rabbit_file="rabbit-linux-amd64"
        rabbit_url="https://github.com/ihciah/rabbit-tcp/releases/download/v${rabbit_ver}/rabbit-linux-amd64.gz"
        download "${rabbit_file}.gz" "${rabbit_url}"
        download_service_file ${RABBIT_INIT} ${RABBIT_CENTOS} "./service/rabbit-tcp_centos.sh" ${RABBIT_DEBIAN} "./service/rabbit-tcp_debian.sh"
    elif [[ "${plugin_num}" == "8" ]]; then
        # Download simple-tls
        simple_tls_ver=$(wget --no-check-certificate -qO- https://api.github.com/repos/IrineSistiana/simple-tls/releases | grep -o '"tag_name": ".*"' | head -n 1| sed 's/"//g;s/v//g' | sed 's/tag_name: //g')
        [ -z ${simple_tls_ver} ] && echo -e "${Error} 获取 simple-tls 最新版本失败." && exit 1
        # wriet version num
        if [ ! -d "$(dirname ${SIMPLE_TLS_VERSION_FILE})" ]; then
            mkdir -p $(dirname ${SIMPLE_TLS_VERSION_FILE})
        fi
        echo ${simple_tls_ver} > ${SIMPLE_TLS_VERSION_FILE}
        simple_tls_file="simple-tls-linux-amd64"
        simple_tls_url="https://github.com/IrineSistiana/simple-tls/releases/download/v${simple_tls_ver}/simple-tls-linux-amd64.zip"
        download "${simple_tls_file}.zip" "${simple_tls_url}"
    fi
}

error_detect_deps_of_ubuntu(){
    local command=$1
    local depend=$2

    if [ ! "$(command -v killall)" ]; then
        # psmisc contains killall & fuser & pstree commands.
        package_install "psmisc" > /dev/null 2>&1
    fi
    sleep 3
    sudo killall -q apt apt-get
    ${command} > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo -e "${Error} 依赖包${Red}${depend}${suffix}安装失败，请检查. "
        echo "Checking the error message and run the script again."
        exit 1
    fi
}

error_asciidos_deps_of_ubuntu1901(){
    local command=$1
    local depend=$2

    sleep 3
    sudo dpkg --configure -a > /dev/null 2>&1
    ${command} > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        if ls -l /var/lib/dpkg/info | grep -qi 'python-sympy'; then
            sudo mv -f /var/lib/dpkg/info/python-sympy.* /tmp
            sudo apt update > /dev/null 2>&1
        fi
        ${command} > /dev/null 2>&1
        if [ $? -ne 0 ]; then
            echo -e "${Error} 依赖包${Red}${depend}${suffix}安装失败，请检查. "
            echo "Checking the error message and run the script again."
            exit 1
        fi
    fi
}

error_detect_depends(){
    local command=$1
    local depend=`echo "${command}" | awk '{print $4}'`
    echo -e "${Info} 开始安装依赖包 ${depend}"
    ${command} > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        if check_sys sysRelease ubuntu || check_sys sysRelease debian; then
            if [ $(get_version) == '19.10' ] && [ ${depend} == 'asciidoc' ]; then
                  error_asciidos_deps_of_ubuntu1901 "${command}" "${depend}"
            else
                  error_detect_deps_of_ubuntu "${command}" "${depend}"
            fi
        else
            echo -e "${Error} 依赖包${Red}${depend}${suffix}安装失败，请检查. "
            echo "Checking the error message and run the script again."
            exit 1
        fi
    fi
}

install_dependencies(){
    if check_sys packageManager yum; then
        echo -e "${Info} 检查EPEL存储库."
        if [ ! -f /etc/yum.repos.d/epel.repo ]; then
            yum install -y epel-release > /dev/null 2>&1
        fi
        [ ! -f /etc/yum.repos.d/epel.repo ] && echo -e "${Error} 安装EPEL存储库失败，请检查它。" && exit 1
        [ ! "$(command -v yum-config-manager)" ] && yum install -y yum-utils > /dev/null 2>&1
        [ x"$(yum-config-manager epel | grep -w enabled | awk '{print $3}')" != x"True" ] && yum-config-manager --enable epel > /dev/null 2>&1
        echo -e "${Info} EPEL存储库检查完成."

        yum_depends=(
            gettext gcc pcre pcre-devel autoconf libtool automake make asciidoc xmlto c-ares-devel libev-devel zlib-devel openssl-devel git qrencode jq
        )
        for depend in ${yum_depends[@]}; do
            error_detect_depends "yum -y install ${depend}"
        done
    elif check_sys packageManager apt; then
        apt_depends=(
            gettext gcc build-essential autoconf libtool libpcre3-dev asciidoc xmlto libev-dev libc-ares-dev automake libssl-dev git qrencode jq
        )

        apt-get -y update
        for depend in ${apt_depends[@]}; do
            error_detect_depends "apt-get -y install ${depend}"
        done
    fi
}

install_libsodium(){    
    if [ ! -f /usr/lib/libsodium.a ]; then
        cd ${CUR_DIR}
        echo -e "${Info} 下载${LIBSODIUM_FILE}."
        download "${LIBSODIUM_FILE}.tar.gz" "${LIBSODIUM_URL}"
        echo -e "${Info} 解压${LIBSODIUM_FILE}."
        tar zxf ${LIBSODIUM_FILE}.tar.gz && cd ${LIBSODIUM_FILE}
        echo -e "${Info} 编译安装${LIBSODIUM_FILE}."
        ./configure --prefix=/usr && make && make install
        if [ $? -ne 0 ]; then
            echo -e "${Error} ${LIBSODIUM_FILE} 安装失败 !"
            install_cleanup
            exit 1
        fi
        echo -e "${Info} ${LIBSODIUM_FILE} 安装成功 !"    
    else
        echo -e "${Info} ${LIBSODIUM_FILE} 已经安装."
    fi
}

install_mbedtls(){
    if [ ! -f /usr/lib/libmbedtls.a ]; then
        cd ${CUR_DIR}
        echo -e "${Info} 下载${MBEDTLS_FILE}."
        download "${MBEDTLS_FILE}-gpl.tgz" "${MBEDTLS_URL}"
        echo -e "${Info} 解压${MBEDTLS_FILE}."
        tar xf ${MBEDTLS_FILE}-gpl.tgz
        cd ${MBEDTLS_FILE}
        echo -e "${Info} 编译安装${MBEDTLS_FILE}."
        make SHARED=1 CFLAGS=-fPIC
        make DESTDIR=/usr install
        if [ $? -ne 0 ]; then
            echo -e "${Error} ${MBEDTLS_FILE} 安装失败."
            install_cleanup
            exit 1
        fi
        echo -e "${Info} ${MBEDTLS_FILE} 安装成功 !"
    else
        echo -e "${Info} ${MBEDTLS_FILE} 已经安装."
    fi
}

config_ss(){
    local server_value="\"0.0.0.0\""

    if get_ipv6; then
        local V=${SS_VERSION}
        local N=${plugin_num}
        if [[ ${V} = "ss-libev" ]] && [[ ${N} = "2" ]] || [[ ${N} = "3" ]] || [[ ${N} == "5" ]] || [[ -z ${N} ]]; then
            server_value="[\"[::0]\",\"0.0.0.0\"]"
        fi
    fi

    if [ ! -d "$(dirname ${SHADOWSOCKS_CONFIG})" ]; then
        mkdir -p $(dirname ${SHADOWSOCKS_CONFIG})
    fi

    # start wriet config
    improt_package "templates" "config_file_templates.sh"
    
    if [[ ${plugin_num} == "1" ]]; then
        if [[ ${libev_v2ray} == "1" ]]; then
           ss_v2ray_ws_http_config
        elif [[ ${libev_v2ray} == "2" ]]; then    
           ss_v2ray_ws_tls_cdn_config
        elif [[ ${libev_v2ray} == "3" ]]; then
            ss_v2ray_quic_tls_cdn_config
        elif [[ ${libev_v2ray} == "4" ]]; then
            ss_v2ray_ws_tls_web_config
            if [[ ${web_flag} = "1" ]]; then
                caddy_config_none_cdn
            elif [[ ${web_flag} = "2" ]]; then
                mirror_domain=$(echo ${mirror_site} | sed 's/https:\/\///g')
                nginx_config
            fi 
        elif [[ ${libev_v2ray} == "5" ]]; then
            ss_v2ray_ws_tls_web_cdn_config
            if [[ ${web_flag} = "1" ]]; then
                caddy_config_with_cdn
            elif [[ ${web_flag} = "2" ]]; then
                mirror_domain=$(echo ${mirror_site} | sed 's/https:\/\///g')
                nginx_config
            fi 
        fi
        # disable mux
        if [[ ${isDisable} == disable ]] && [[ ${libev_v2ray} != "3" ]]; then
            sed 's/"plugin_opts":"/"plugin_opts":"mux=0;/' -i ${SHADOWSOCKS_CONFIG}
        fi
    elif [[ ${plugin_num} == "2" ]]; then
        if [ ! -d "$(dirname ${KCPTUN_CONFIG})" ]; then
            mkdir -p $(dirname ${KCPTUN_CONFIG})
        fi
        
        ss_config_standalone
        kcptun_config_standalone
    elif [[ ${plugin_num} == "3" ]]; then
        if [[ ${libev_obfs} == "1" ]]; then
           ss_obfs_http_config
        elif [[ ${libev_obfs} == "2" ]]; then    
           ss_obfs_tls_config
        fi
    elif [[ ${plugin_num} == "4" ]]; then
        ss_goquiet_config
    elif [[ ${plugin_num} == "5" ]]; then
        if [ ! -d "$(dirname ${CK_SERVER_CONFIG})" ]; then
            mkdir -p $(dirname ${CK_SERVER_CONFIG})
        fi
        
        ss_config_standalone
        cloak2_server_config
        cloak2_client_config
    elif [[ ${plugin_num} == "6" ]]; then
        if [[ ${libev_mtt} == "1" ]]; then
            if [[ ${domainType} = DNS-Only ]]; then
                ss_mtt_tls_dns_only_config
            else
                ss_mtt_tls_config
            fi
        elif [[ ${libev_mtt} == "2" ]]; then
            if [[ ${isEnableWeb} = disable ]]; then
                ss_mtt_wss_dns_only_or_cdn_config
            elif [[ ${isEnableWeb} = enable ]]; then
                ss_mtt_wss_dns_only_or_cdn_web_config
                if [[ ${domainType} = DNS-Only ]] && [[ ${web_flag} = "1" ]]; then
                    domain=${serverName}
                    path=${wssPath}
                    caddy_config_none_cdn
                elif [[ ${domainType} = CDN ]] && [[ ${web_flag} = "1" ]]; then
                    domain=${serverName}
                    path=${wssPath}
                    caddy_config_with_cdn
                elif [[ ${web_flag} = "2" ]]; then
                    domain=${serverName}
                    path=${wssPath}
                    cerpath=${cerPath}
                    keypath=${keyPath}
                    mirror_domain=$(echo ${mirror_site} | sed 's/https:\/\///g')
                    nginx_config
                fi 
            else
                ss_mtt_wss_config
            fi
        fi
        
        if [[ ${isEnable} == enable ]]; then
            sed 's/"plugin_opts":"/"plugin_opts":"mux;/' -i ${SHADOWSOCKS_CONFIG}
        fi
    elif [[ ${plugin_num} == "7" ]]; then
        if [ ! -d "$(dirname ${RABBIT_CONFIG})" ]; then
            mkdir -p $(dirname ${RABBIT_CONFIG})
        fi
        
        ss_config_standalone
        rabbit_tcp_config_standalone
    elif [[ ${plugin_num} == "8" ]]; then
        if [[ ${libev_simple_tls} == "1" ]]; then
            ss_simple_tls_config
        elif [[ ${libev_simple_tls} == "2" ]]; then
            ss_simple_tls_wss_config
        fi
    else
        ss_config_standalone
    fi
}

gen_ss_links(){
    improt_package "templates" "sip002_url_templates.sh"
    
    if [[ ${plugin_num} == "1" ]]; then
        if [[ ${libev_v2ray} == "1" ]]; then
            ss_v2ray_ws_http_link
        elif [[ ${libev_v2ray} == "2" ]]; then
            ss_v2ray_ws_tls_cdn_link
        elif [[ ${libev_v2ray} == "3" ]]; then
            ss_v2ray_quic_tls_cdn_link
        elif [[ ${libev_v2ray} == "4" ]]; then
            ss_v2ray_ws_tls_web_link
        elif [[ ${libev_v2ray} == "5" ]]; then
            ss_v2ray_ws_tls_web_cdn_link
        fi
    elif [[ ${plugin_num} == "2" ]]; then
        ss_kcptun_link
    elif [[ ${plugin_num} == "3" ]]; then
        if [[ ${libev_obfs} == "1" ]]; then
           ss_obfs_http_link
        elif [[ ${libev_obfs} == "2" ]]; then    
           ss_obfs_tls_link
        fi
    elif [[ ${plugin_num} == "4" ]]; then
        ss_goquiet_link
    elif [[ ${plugin_num} == "5" ]]; then
        ss_cloak_link_new
    elif [[ ${plugin_num} == "6" ]]; then
        if [[ ${libev_mtt} == "1" ]]; then
            if [[ ${domainType} = DNS-Only ]]; then
                ss_mtt_tls_dns_only_link
            else
                ss_mtt_tls_link
            fi
        elif [[ ${libev_mtt} == "2" ]]; then
            if [[ ${isEnableWeb} = disable ]]; then
                ss_mtt_wss_dns_only_or_cdn_link
            elif [[ ${isEnableWeb} = enable ]]; then
                ss_mtt_wss_dns_only_or_cdn_web_link
            else
                ss_mtt_wss_link
            fi
        fi
    elif [[ ${plugin_num} == "7" ]]; then
        ss_rabbit_tcp_link
    elif [[ ${plugin_num} == "8" ]]; then
        if [[ ${libev_simple_tls} == "1" ]]; then
            ss_simple_tls_link
        elif [[ ${libev_simple_tls} == "2" ]]; then
            ss_simple_tls_wss_link
        fi
    else
        ss_link
    fi
}

install_completed(){
    ldconfig
    if [[ ${SS_VERSION} = "ss-libev" ]]; then
        ${SHADOWSOCKS_LIBEV_INIT} start > /dev/null 2>&1
    elif [[ ${SS_VERSION} = "ss-rust" ]]; then
        ${SHADOWSOCKS_RUST_INIT} start > /dev/null 2>&1
    elif [[ ${SS_VERSION} = "go-ss2" ]]; then
        ${GO_SHADOWSOCKS2_INIT} start > /dev/null 2>&1
    fi
    
    clear -x
    
    improt_package "templates" "terminal_config_templates.sh"
    
    if [[ ${plugin_num} == "1" ]]; then
        if [[ ${libev_v2ray} == "1" ]]; then
            ss_v2ray_ws_http_show
        elif [[ ${libev_v2ray} == "2" ]]; then
            ss_v2ray_ws_tls_cdn_show
        elif [[ ${libev_v2ray} == "3" ]]; then
            ss_v2ray_quic_tls_cdn_show
        elif [[ ${libev_v2ray} == "4" ]]; then
            if [[ ${web_flag} = "1" ]]; then
                # start caddy
                /etc/init.d/caddy start > /dev/null 2>&1
            elif [[ ${web_flag} = "2" ]]; then
                systemctl start nginx
            fi 
            ss_v2ray_ws_tls_web_show
        elif [[ ${libev_v2ray} == "5" ]]; then
            if [[ ${web_flag} = "1" ]]; then
                # start caddy
                /etc/init.d/caddy start > /dev/null 2>&1
            elif [[ ${web_flag} = "2" ]]; then
                systemctl start nginx
            fi 
            ss_v2ray_ws_tls_web_cdn_show
        fi
    elif [[ ${plugin_num} == "2" ]]; then
        # start kcptun
        ${KCPTUN_INIT} start  > /dev/null 2>&1
        
        ss_kcptun_show
    elif [[ ${plugin_num} == "3" ]]; then
        if [[ ${libev_obfs} == "1" ]]; then
           ss_obfs_http_show
        elif [[ ${libev_obfs} == "2" ]]; then    
           ss_obfs_tls_show
        fi
    elif [[ ${plugin_num} == "4" ]]; then
        ss_goquiet_show
    elif [[ ${plugin_num} == "5" ]]; then
        # start cloak
        ${CLOAK_INIT} start  > /dev/null 2>&1
        
        ss_cloak_show_new
    elif [[ ${plugin_num} == "6" ]]; then
        if [[ ${libev_mtt} == "1" ]]; then
            if [[ ${domainType} = DNS-Only ]]; then
                ss_mtt_tls_dns_only_show
            else
                ss_mtt_tls_show
            fi
        elif [[ ${libev_mtt} == "2" ]]; then
            if [[ ${isEnableWeb} = disable ]]; then
                ss_mtt_wss_dns_only_or_cdn_show
            elif [[ ${isEnableWeb} = enable ]]; then
                if [[ ${web_flag} = "1" ]]; then
                    # start caddy
                    /etc/init.d/caddy start > /dev/null 2>&1
                elif [[ ${web_flag} = "2" ]]; then
                    systemctl start nginx
                fi 
                ss_mtt_wss_dns_only_or_cdn_web_show
            else
                ss_mtt_wss_show
            fi
        fi
    elif [[ ${plugin_num} == "7" ]]; then
        # start rabbit-tcp
        ${RABBIT_INIT} start  > /dev/null 2>&1
        ss_rabbit_tcp_show
    elif [[ ${plugin_num} == "8" ]]; then
        if [[ ${libev_simple_tls} == "1" ]]; then
            ss_simple_tls_show
        elif [[ ${libev_simple_tls} == "2" ]]; then
            ss_simple_tls_wss_show
        fi
    else
        ss_show
    fi
}

install_prepare(){
    improt_package "prepare" "shadowsocks_prepare.sh"
    choose_ss_install_version
    install_prepare_port
    install_prepare_password
    install_prepare_cipher
    echo && echo -e "请选择要安装的SS插件
    
  ${Green}1.${suffix} v2ray-plugin
  ${Green}2.${suffix} kcptun
  ${Green}3.${suffix} simple-obfs
  ${Green}4.${suffix} goquiet (unofficial)
  ${Green}5.${suffix} cloak (based goquiet)
  ${Green}6.${suffix} mos-tls-tunnel
  ${Green}7.${suffix} rabbit-tcp
  ${Green}8.${suffix} simple-tls
  "
    echo && read -e -p "(默认: 不安装)：" plugin_num
    [[ -z "${plugin_num}" ]] && plugin_num="" && echo -e "\n${Tip} 当前未选择任何插件，仅安装${SS_VERSION}."
    if [[ ${plugin_num} == "1" ]]; then
        improt_package "prepare" "v2ray_plugin_prepare.sh"
        install_prepare_libev_v2ray
    elif [[ ${plugin_num} == "2" ]]; then
        improt_package "prepare" "kcptun_prepare.sh"
        install_prepare_libev_kcptun
    elif [[ ${plugin_num} == "3" ]]; then
        improt_package "prepare" "simple_obfs_prepare.sh"
        install_prepare_libev_obfs
    elif [[ ${plugin_num} == "4" ]]; then
        improt_package "prepare" "goquiet_prepare.sh"
        install_prepare_libev_goquiet
    elif [[ ${plugin_num} == "5" ]]; then
        improt_package "prepare" "cloak_prepare.sh"
        install_prepare_libev_cloak
    elif [[ ${plugin_num} == "6" ]]; then
        improt_package "prepare" "mos_tls_tunnel_prepare.sh"
        install_prepare_libev_mos_tls_tunnel
    elif [[ ${plugin_num} == "7" ]]; then
        improt_package "prepare" "rabbit_tcp_prepare.sh"
        install_prepare_libev_rabbit_tcp
    elif [[ ${plugin_num} == "8" ]]; then
        improt_package "prepare" "simple_tls_prepare.sh"
        install_prepare_libev_simple_tls
    elif [[ ${plugin_num} == "" ]]; then
        :
    else
        echo -e "${Error} 请输入正确的数字 [1-7]" && exit 1
    fi
    
    echo
    echo "按任意键开始…或按Ctrl+C取消"
    char=`get_char`
    
    if [[ ${SS_VERSION} = "ss-rust" ]] || [[ ${SS_VERSION} = "go-ss2" ]] && [[ "${plugin_num}" != "3" ]]; then
        echo
        echo -e "${Info} 即将开始下载相关文件请稍等."
    fi
}

install_main(){
    if [[ ${SS_VERSION} = "ss-libev" ]]; then
        install_libsodium
        if ! ldconfig -p | grep -wq "/usr/lib"; then
            echo "/usr/lib" > /etc/ld.so.conf.d/lib.conf
        fi
        ldconfig
        install_mbedtls
    fi
    
    improt_package "tools" "shadowsocks_install.sh"
    if [[ ${SS_VERSION} = "ss-libev" ]]; then
        install_shadowsocks_libev
    elif [[ ${SS_VERSION} = "ss-rust" ]]; then
        install_shadowsocks_rust
    elif [[ ${SS_VERSION} = "go-ss2" ]]; then
        install_go_shadowsocks2
    fi
    
    if [ "${plugin_num}" == "1" ]; then
        improt_package "plugins" "v2ray_plugin_install.sh"
        install_v2ray_plugin
        if [[ ${web_flag} = "1" ]]; then
            choose_caddy_extension ${libev_v2ray}
        elif [[ ${web_flag} = "2" ]]; then
            improt_package "tools" "nginx_install.sh"
            install_nginx
        fi
        plugin_client_name="v2ray-plugin"
    elif [ "${plugin_num}" == "2" ]; then
        improt_package "plugins" "kcptun_install.sh"
        install_kcptun
        plugin_client_name="kcptun"
    elif [ "${plugin_num}" == "3" ]; then
        improt_package "plugins" "simple_obfs_install.sh"
        install_simple_obfs
        plugin_client_name="obfs-local"
    elif [ "${plugin_num}" == "4" ]; then
        improt_package "plugins" "goquiet_install.sh"
        install_goquiet
        plugin_client_name="gq-client"
    elif [ "${plugin_num}" == "5" ]; then
        improt_package "plugins" "cloak_install.sh"
        install_cloak
        gen_credentials
        plugin_client_name="ck-client"
    elif [ "${plugin_num}" == "6" ]; then
        improt_package "plugins" "mos_tls_tunnel_install.sh"
        install_mos_tls_tunnel
        if [[ ${web_flag} = "1" ]]; then
            improt_package "tools" "caddy_install.sh"
            if [[ ${domainType} = DNS-Only ]] && [[ ${isEnableWeb} = enable ]]; then
                install_caddy
            elif [[ ${domainType} = CDN ]] && [[ ${isEnableWeb} = enable ]]; then
                install_caddy "tls.dns.cloudflare"
            fi
        elif [[ ${web_flag} = "2" ]]; then
            improt_package "tools" "nginx_install.sh"
            install_nginx
        fi
        plugin_client_name="mostlstunnel"
    elif [ "${plugin_num}" == "7" ]; then
        improt_package "plugins" "rabbit_tcp_install.sh"
        install_rabbit_tcp
        plugin_client_name="rabbit-plugin"
    elif [ "${plugin_num}" == "8" ]; then
        improt_package "plugins" "simple_tls_install.sh"
        install_simple_tls
        gen_credentials_cca "${serverName}"
        plugin_client_name="simple-tls"
    fi
}

install_step_all(){
    [[ -e ${SHADOWSOCKS_LIBEV_BIN_PATH} ]] && echo -e "${Info} Shadowsocks-libev 已经安装." && exit 1
    [[ -e ${SHADOWSOCKS_RUST_BIN_PATH} ]] && echo -e "${Info} Shadowsocks-rust 已经安装." && exit 1
    [[ -e ${GO_SHADOWSOCKS2_BIN_PATH} ]] && echo -e "${Info} Go-shadowsocks2 已经安装." && exit 1
    disable_selinux
    install_prepare
    if [[ ${SS_VERSION} = "ss-libev" ]]; then
        install_dependencies
    fi
    if [[ ${SS_VERSION} = "ss-rust" ]] || [[ ${SS_VERSION} = "go-ss2" ]]; then
        if [ ! "$(command -v qrencode)" ]; then
            package_install "qrencode" > /dev/null 2>&1
        fi
    fi
    if [[ ${SS_VERSION} = "ss-rust" ]] || [[ ${SS_VERSION} = "go-ss2" ]] && [[ "${plugin_num}" == "3" ]]; then
        install_dependencies
    fi
    if [[ ${SS_VERSION} = "ss-rust" ]] && [[ "${plugin_num}" == "5" ]] || [[ "${plugin_num}" == "7" ]]; then
        if [ ! "$(command -v jq)" ]; then
            package_install "jq" > /dev/null 2>&1
        fi
    fi
    if [[ ${SS_VERSION} = "go-ss2" ]]; then
        if [ ! "$(command -v jq)" ]; then
            package_install "jq" > /dev/null 2>&1
        fi
    fi
    download_ss_file
    download_plugins_file
    config_firewall_logic
    install_main
    add_more_entropy
    install_cleanup
    config_ss
    if [[ ${shadowsockscipher} == "plain" ]]; then
        shadowsockscipher="none"
    fi
    gen_ss_links
    install_completed
    improt_package "utils" "view_config.sh"
    show_config "all"
}

install_cleanup(){
    cd ${CUR_DIR}
    # ss-libev
    rm -rf ${LIBSODIUM_FILE} ${LIBSODIUM_FILE}.tar.gz
    rm -rf ${MBEDTLS_FILE} ${MBEDTLS_FILE}-gpl.tgz
    rm -rf ${shadowsocks_libev_file} ${shadowsocks_libev_file}.tar.gz
    
    # ss-rust
    rm -rf ${shadowsocks_rust_file}.tar.xz
    
    # v2ray-plugin
    rm -rf v2ray-plugin_linux_amd64 ${v2ray_plugin_file}.tar.gz
    
    # kcptun
    rm -rf client_linux_amd64 server_linux_amd64 ${kcptun_file}.tar.gz
    
    # simple-obfs
    rm -rf simple-obfs
    
    # goquiet
    rm -rf ${goquiet_file}
    
    # cloak
    rm -rf ${cloak_file}
    
    # mos-tls-tunnel
    rm -rf ${mtt_file}.zip LICENSE README.md mtt-client

    #simple-tls
    rm -rf ${simple_tls_file}.zip LICENSE  README.md
}

do_uid(){
    if [ "$(command -v ck-server)" ]; then
        improt_package "utils" "ck_user_manager.sh"
        ck2_users_manager
        sleep 0.5
        
        is_the_api_open "stop"
    else
        echo
        echo -e "${Error} 仅支持 ss + cloak 组合下使用，请确认是否是以该组合形式运行."
        echo
    fi
}

do_link(){
    local CK_UID=$1
    
    if [ "$(command -v ck-server)" ]; then
        improt_package "utils" "ck_sslink.sh"
        get_link_of_ck2 "${CK_UID}"
    else
        echo
        echo -e "${Error} 仅支持 ss + cloak 组合下使用，请确认是否是以该组合形式运行."
        echo
    fi
}

do_scan(){
    local SS_URL=$1
    
    improt_package "utils" "qr_code.sh"
    gen_qr_code "${SS_URL}"
}

do_show(){
    improt_package "utils" "view_config.sh"
    show_config "standalone"
}

do_log(){
    improt_package "utils" "view_log.sh"
    show_log
}

do_start(){
    if [[ ! "$(command -v ss-server)" ]] && [[ ! "$(command -v ssserver)" ]] && [[ ! "$(command -v go-shadowsocks2)" ]]; then
        echo
        echo -e " ${Red} Shadowsocks 未安装，请尝试安装后，再来执行此操作。${suffix}"
        echo
        exit 1
    fi
    
    improt_package "utils" "start.sh"
    start_services
}

do_stop(){
    improt_package "utils" "stop.sh"
    stop_services
}

do_restart(){
    do_stop
    do_start
}

do_status(){
    local mark=$1
    if [ "$(command -v ss-server)" ]; then
        PID=`ps -ef |grep -v grep | grep ss-server |awk '{print $2}'`
        local BIN_PATH=${SHADOWSOCKS_LIBEV_BIN_PATH}
        local SS_PID=${PID}
    elif [ "$(command -v ssserver)" ]; then
        RUST_PID=`ps -ef |grep -v grep | grep ssserver |awk '{print $2}'`
        local BIN_PATH=${SHADOWSOCKS_RUST_BIN_PATH}
        local SS_PID=${RUST_PID}
    elif [ "$(command -v go-shadowsocks2)" ]; then
        GO_PID=`ps -ef |grep -v grep | grep go-shadowsocks2 |awk '{print $2}'`
        local BIN_PATH=${GO_SHADOWSOCKS2_BIN_PATH}
        local SS_PID=${GO_PID}
    fi
    
    if [[ ${mark} == "menu" ]]; then
        menu_status ${BIN_PATH} ${SS_PID}
    else
        if [[ ! -e ${BIN_PATH} ]]; then
            echo
            echo -e "${Error} shadowsocks and related plugins are not installed."
            echo
            exit 1
        fi
        
        improt_package "utils" "status.sh"
        other_status
    fi
}

do_update(){
    cd ${CUR_DIR}
    
    improt_package "utils" "update.sh"
    
    if [[ -e ${SHADOWSOCKS_LIBEV_BIN_PATH} ]]; then
        update_shadowsocks_libev
    elif [[ -e ${SHADOWSOCKS_RUST_BIN_PATH} ]]; then
        update_shadowsocks_rust
    elif [[ -e ${GO_SHADOWSOCKS2_BIN_PATH} ]]; then
        update_go_shadowsocks2
    fi
}

do_uninstall(){
    printf "你确定要卸载Shadowsocks吗? [y/n]\n"
    read -e -p "(默认: n):" answer
    [ -z ${answer} ] && answer="n"
    if [ "${answer}" != "y" ] && [ "${answer}" != "Y" ]; then
        echo
        echo -e "${Info} Shadowsocks 卸载取消."
        echo
        exit 1
    fi
    
    # start uninstall
    improt_package "utils" "uninstall.sh"
    uninstall_services
    echo -e "${Info} Shadowsocks 卸载成功."
}

do_install(){
    local FLAG
    
    # check supported
    if ! install_check; then
        echo -e "[${Red}Error${suffix}] Your OS is not supported to run it!"
        echo "Please change to CentOS 6+/Debian 7+/Ubuntu 12+ and try again."
        exit 1
    fi
    
    if [[ -e ${SHADOWSOCKS_LIBEV_BIN_PATH} ]]; then
        FLAG="Shadowsocks-libev"
    elif [[ -e ${SHADOWSOCKS_RUST_BIN_PATH} ]]; then
        FLAG="Shadowsocks-rust"
    elif [[ -e ${GO_SHADOWSOCKS2_BIN_PATH} ]]; then
        FLAG="Go-shadowsocks2"
    else
        FLAG="Shadowsocks"
    fi
    
    echo -e " ${FLAG}一键脚本 ${Red}[v${SHELL_VERSION} ${methods}]${suffix}

    ${Green}1.${suffix} BBR
    ${Green}2.${suffix} Install
    ${Green}3.${suffix} Uninstall
     "
    do_status "menu"
    echo && read -e -p "请输入数字 [1-3]：" menu_num
    case "${menu_num}" in
        1)   
            choose_script_bbr
            ;;
        2)
            install_step_all
            ;;
        3)
            do_uninstall
            ;;
        *)
            echo -e "${Error} 请输入正确的数字 [1-3]"
            ;;
    esac
}



# install and tools
action=${1:-"install"}

case ${action} in
    install|uninstall|update|start|stop|restart)
        do_${action}
        ;;
    status)
        do_${action} "status"
        ;;
    script)
        check_script_update
        ;;
    uid)
        do_${action} 
        ;;
    link)
        do_${action}  "${2}"
        ;;
    scan)
        do_${action}  "${2}"
        ;;
    show)
        do_${action}
        ;;
    log)
        do_${action}
        ;;
    help)
        usage 0
        ;;
    *)
        usage 1
        ;;
esac