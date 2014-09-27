#!/bin/sh
cd `dirname $0`
MODE="$1"
EXTRA_ARGS="$2"
if [[ "$MODE" = "dev" ]]; then
    EXTRA_ARGS="$EXTRA_ARGS -s reloader"
else
    EXTRA_ARGS="$EXTRA_ARGS -noshell -noinput -setcookie {{appid}}"
fi
exec erl -pa $PWD/ebin $PWD/deps/*/ebin -sname {{appid}} -config $MODE.config -s {{appid}} $EXTRA_ARGS
