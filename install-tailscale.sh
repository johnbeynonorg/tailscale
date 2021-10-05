#!/usr/bin/env bash
set -x
TAILSCALE_VERSION=${TAILSCALE_VERSION:-1.14.6}
TS_FILE=tailscale_${TAILSCALE_VERSION}_amd64.tgz
wget -q "https://pkgs.tailscale.com/stable/${TS_FILE}" && tar xzf "${TS_FILE}" --strip-components=1
cp -r tailscale tailscaled /usr/bin/

mkdir -p /var/run/tailscale /var/cache/tailscale /var/lib/tailscale
