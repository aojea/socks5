# SOCKS5 server based on https://github.com/armon/go-socks5

1. Install it `go install github.com/aojea/socks5`
2. Copy the binary to /usr/bin/socks5
3. Copy the socks5.server to your systemd folder `/etc/systemd/system/`
4. Enable the server `systemctl enable socks5`
5. Start the server with `systemctl start socks5` 

You have a SOCKS5 server listening in yout port 1080
