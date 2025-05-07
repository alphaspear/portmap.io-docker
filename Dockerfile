FROM debian:latest

RUN apt-get update && apt-get install -y openvpn

COPY iabhilashjoshi.AlphaspearServer.ovpn /vpn/iabhilashjoshi.AlphaspearServer.ovpn

CMD ["openvpn", "--config", "/vpn/iabhilashjoshi.AlphaspearServer.ovpn"]