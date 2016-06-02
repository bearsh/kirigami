#!/usr/bin/env bash

QMLPLUGINDUMP=${QMLPLUGINDUMP-qmlplugindump}

[[ -z ${1} ]] && { echo "import path not given, exit"; exit 1; }

echo "using ${QMLPLUGINDUMP} as dump tool" >&2

${QMLPLUGINDUMP} -platform xcb org.kde.kirigami 1.0 "${1}"
