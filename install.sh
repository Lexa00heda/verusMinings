termux-wake-lock
pkg update
pkg upgrade -y
pkg install libjansson wget nano -y
# pkg install tmux -y
device_model="r$(getprop ro.product.model)-$(getprop ro.csc.countryiso_code)-$(getprop ro.build.version.release)-$(uptime -p | tr -d ' ')" && sed -i "s|\"user\": \".*\"|\"user\": \"3PcaKzYUJ37qRipD6Pg6DtJzp9yEJuA3Za.$device_model\"|" config.json
chmod +x ccminer start.sh
chmod +x repeat.sh
nohup watch './repeat.sh'  /dev/null ./logFile 2>&1 &
