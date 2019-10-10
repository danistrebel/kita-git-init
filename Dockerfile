FROM alpine:3.10

RUN apk --update add git less openssh bash && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

VOLUME /git
WORKDIR /git

COPY idempotent-clone.sh /opt/

RUN chmod +x /opt/idempotent-clone.sh

ENTRYPOINT ["/opt/idempotent-clone.sh"]