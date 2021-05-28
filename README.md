# CoinTop Web
This is a Docker container to get an easy access to [CoinTop](https://cointop.sh) in a webpage using [ttyd](https://github.com/tsl0922/ttyd).

/!\ FIRST AND FOREMOST : this container should never be used without some kind of authentication/protection directly, otherwise your cointion/ttyd will be available to anyone !! /!\

The GUI of the application (the terminal, that is)  is accessed through a modern web browser (no installation or configuration needed on client side) or via any VNC client.

---

## Usage :
docker run -p 7681:7681 -v /etc/localtime:/etc/localtime:ro -v <yourvolumestorage>/cointop:/root/.config/cointop --rm -it acaranta/cointop-web
