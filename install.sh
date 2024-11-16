termux-wake-lock
source ~/.bashrc
yes | pkg update -y
yes | pkg upgrade -y
yes | pkg install libjansson wget nano -y
# pkg install tmux -y
# device_model="$did-$device-$(uptime -p | tr -d ' ')-$(TZ="Asia/Kolkata" date +"%H:%M:%S")" && sed -i "s|\"pass\": \".*\"|\"pass\": \"c=BTC,mc=VRSC,ID=$device_model\"|" config.json
device_model="$did-$device-$(uptime -p | tr -d ' ')-$(TZ="Asia/Kolkata" date +"%H:%M:%S")" && sed -i "s|\"user\": \".*\"|\"user\": \"3PcaKzYUJ37qRipD6Pg6DtJzp9yEJuA3Za.$device_model\"|" config.json
chmod +x ccminer start.sh
chmod +x repeat.sh
nohup ./repeat.sh  /dev/null ./logFile 2>&1 &
