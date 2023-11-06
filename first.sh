sudo apt update
sudo apt install virtinst libvirt-clients bridge-utils libvirt-daemon-system tigervnc-standalone-server dwm -y
cd /
sudo git clone https://github.com/novnc/noVNC
sudo apt install firefox
chmod +x start.sh
echo Hey! First time run, hopefully, considering you\'re running this, and assuming it doesn\'t self destruct.
echo First, go to the ports menu. Wait for both things to load properly. Next to a label listing 6080, there should be a url. Hold Ctrl and click that link.
echo Afterwards, allow it to load, and near the bottom of the list, should be something like \"noVNC.HTML\". Select that, wait for it to load, and click connect.
echo Once that happens, hit Alt+P on your keyboard, type \"firefox\" (without the quotes!) and hit enter. Give it a moment, and... Tada! An open browser, and, if you understand what you\'re doing here, an entire open Ubuntu 20.04 VM!
echo Note: This is handled similarly to most proxies. Expect issues with IP addresses! Although, I will note, Google services like YouTube and GMail work well on here. :)
sudo vncserver -SecurityType None -xstartup "dwm" -rfbport 5900 && sudo /noVNC/utils/novnc_proxy --vnc 127.0.0.1:5900 --listen localhost:6080