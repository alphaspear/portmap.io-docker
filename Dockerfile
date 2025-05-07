FROM alpine:latest

RUN apk update && apk add --no-cache openvpn

COPY iabhilashjoshi.AlphaspearServer.ovpn /vpn/iabhilashjoshi.AlphaspearServer.ovpn

CMD ["openvpn", "--config", "/vpn/iabhilashjoshi.AlphaspearServer.ovpn"]
