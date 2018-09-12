docker run -d --name kp2 --restart=always --net=host --cap-add=NET_ADMIN \
  -e VRID=53 \
  -e INTERFACE=eth0 \
  -e VIRTUAL_IP=192.168.0.111 \
  -e HOST_IP1=192.168.0.104 \
  -e HOST_IP2=192.168.0.104 \
  -e HOST_IP3=192.168.0.104 \
  -e VIRTUAL_MASK=24 \
  -e CHECK_IP=any \
  -e CHECK_PORT=22 \
  freemanliu/keepalived:v2.0.4
  