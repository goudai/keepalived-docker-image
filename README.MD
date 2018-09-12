docker run -d --name keepalived --restart=always --net=host --cap-add=NET_ADMIN \
  -e VRID=53 \
  -e INTERFACE=ens33 \
  -e VIRTUAL_IP=192.168.50.10 \
  -e VIRTUAL_MASK=24 \
  -e CHECK_IP=any \
  -e CHECK_PORT=22 \
  freemanliu/keepalived:v2.0.4