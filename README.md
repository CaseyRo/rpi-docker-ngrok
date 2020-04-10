NGROK for Raspberry PI
=======================

Decided to take this project and do a bit more with this.

- Build the dockerfile based on Debian this time
- It will always take the most recent version of NGRok for linux (pi in this case)
- Pushed it to docker hub for general use.

_this was tested on a RPi4 with 2 GB on Docker_

## Getting started

1. Make sure you create a config, example has been added to ```/config/ngrok.yml.example```
2. Start the docker with the docker compose available ```docker-compose up -d``` or ```docker run keesromkes/rpi-ngrok:latest```

I didn't do any crazy stuff or made it extra sexy, it just uses your config file to setup your tunnels. [You can read NGROK's documentation about that here](https://ngrok.com/docs#config-location).

Original comes from [Zaporylie](https://github.com/zaporylie/docker-rpi-ngrok) (THANKS!)
