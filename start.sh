#!/bin/bash

touch /app/logs/error_log

tail -F /app/logs/error_log &

exec /app/apache/bin/httpd -DNO_DETACH
