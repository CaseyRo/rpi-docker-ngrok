FROM lsiobase/alpine:arm32v7-3.12

LABEL maintainer="Casey Romkes <casey.berlin@hey.com>"

RUN apk update && apk upgrade && \
    apk add --no-cache unzip

# RUN apt-get update && apt-get install -y \
#     unzip \
#     net-tools \
#     --no-install-recommends && \
#     rm -rf /var/lib/apt/lists/*

WORKDIR /root

ADD https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip ngrok.zip

RUN unzip ngrok.zip -d /bin \
    && rm -f ngrok.zip \
    && touch .ngrok

CMD /bin/ngrok start --all -config /app/config/ngrok.yml -log stdout
