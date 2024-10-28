termux-wake-lock
source ~/.bashrc
yes | pkg update -y
yes | pkg upgrade -y
yes | pkg install libjansson wget nano -y
# pkg install tmux -y
device_model="$device-$(uptime -p | tr -d ' ')" && sed -i "s|\"user\": \".*\"|\"user\": \"3PcaKzYUJ37qRipD6Pg6DtJzp9yEJuA3Za.$device_model\"|" config.json
chmod +x ccminer start.sh
chmod +x repeat.sh
nohup ./repeat.sh  /dev/null ./logFile 2>&1 &
