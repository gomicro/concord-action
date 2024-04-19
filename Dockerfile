FROM alpine:3.19

COPY entrypoint.sh /entrypoint.sh
COPY --from=ghcr.io/gomicro/concord:0.1.2 /concord /concord

ENTRYPOINT ["/entrypoint.sh"]
