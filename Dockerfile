FROM ghcr.io/k1low/pr-revert:v0.2.0

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]