#create and incoming port forward
sudo iptables -t nat -A PREROUTING -i eno1 -p tcp --dport 3001 -j REDIRECT --to-port 31013
#view port forwards
sudo iptables -L -n -t nat --line-number
#delete port forward
sudo iptables -t nat -D PREROUTING {rule-number-here}

