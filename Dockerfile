FROM alpine:3.21

COPY entrypoint.sh /entrypoint.sh
COPY --from=ghcr.io/gomicro/concord:0.1.4 /concord /concord

ENTRYPOINT ["/entrypoint.sh"]
