#!/bin/sh

echo "Launching XMRIG\n"

WORKER_URL=${WORKER_URL:-"0.0.0.0:1111"}
POOL_USER=${POOL_USER:-4B6mV3NGBkVFRExSZiAk4hELCCx9bFBbtDGuAmx9ddUoJbLbfvrL7MYGRt5xqiM7nw8hfkCmPP9gFGjC2WHA47AH3xM1LBR}

exec /xmrig/xmrig \
--url=${WORKER_URL} \
--user=${POOL_USER} \
--pass=$HOSTNAME-$((1 + $RANDOM % 10)) \
--threads="$(($(nproc)/2))" \
--donate-level=0 \
--cpu-priority=0 \
--http-port=80 --http-host=0.0.0.0 --http-enabled \
--http-access-token=1481c139-b448-4bff-8cce-b95eaf8d1396
