FROM caddy:2.9.1-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/easydns

FROM caddy:2.9.1

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
