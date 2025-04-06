FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/easydns

FROM caddy:builder

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
