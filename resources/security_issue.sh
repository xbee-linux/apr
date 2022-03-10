#!/bin/bash
set -e

sed -e "/shift/i \
\    if (xt->tm_mon < 0 || xt->tm_mon >= 12) return APR_EBADDATE;" \
    -i time/unix/time.c