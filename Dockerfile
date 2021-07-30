FROM ghcr.io/k1low/pr-revert:v0.3.0

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]