FROM ghcr.io/k1low/pr-revert:v0.2.1

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]