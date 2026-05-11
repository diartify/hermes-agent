#!/bin/bash
source /opt/hermes/.venv/bin/activate
hermes gateway run &
exec hermes dashboard --host 0.0.0.0 --port "${PORT:-9119}" --no-open --insecure
