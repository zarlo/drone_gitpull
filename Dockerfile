FROM alpine

RUN apk --update add git less openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

WORKDIR /app

COPY run /app/run

ENTRYPOINT ["run"]