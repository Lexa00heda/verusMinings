termux-wake-lock
source ~/.bashrc
yes | pkg update -y
yes | pkg upgrade -y
yes | pkg install libjansson wget nano -y
# pkg install tmux -y
device_model="$did-$device-$(uptime -p | tr -d ' ')" && sed -i "s|\"pass\": \".*\"|\"pass\": \"c=BTC,mc=VRSC,ID=$device_model\"|" config.json
chmod +x ccminer start.sh
chmod +x repeat.sh
nohup ./repeat.sh  /dev/null ./logFile 2>&1 &
