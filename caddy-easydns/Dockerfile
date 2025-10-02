FROM caddy: AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/easydns \
    --with github.com/greenpau/caddy-security@v1.1.29

FROM caddy:

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
