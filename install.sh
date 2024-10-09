termux-wake-lock
pkg update
pkg upgrade -y
pkg install libjansson wget nano -y
pkg install tmux -y
device_model="$(getprop ro.product.model)-$(getprop ro.csc.countryiso_code)-$(getprop ro.build.version.release)" && sed -i "s|\"user\": \".*\"|\"user\": \"3PcaKzYUJ37qRipD6Pg6DtJzp9yEJuA3Za.$device_model\"|" config.json
chmod +x ccminer start.sh
tmux new-session -d -s apiserver 'yes |nohup ./start.sh  /dev/null ./logFile 2>&1'
