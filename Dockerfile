FROM alpine:3.24

COPY entrypoint.sh /entrypoint.sh
COPY --from=ghcr.io/gomicro/concord:0.2.0 /concord /concord

ENTRYPOINT ["/entrypoint.sh"]
