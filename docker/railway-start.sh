#!/bin/bash
# Start Telegram gateway in background (polling mode)
hermes gateway run &
# Expose dashboard on Railway's injected PORT
exec hermes dashboard --host 0.0.0.0 --port "${PORT:-9119}" --no-open --insecure
