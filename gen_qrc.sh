#!/usr/bin/env bash

file=$1

[[ -z ${file} ]] && { echo "qrc file not defined, exit"; exit 1; }

echo "<RCC>" > ${file}
echo "    <qresource prefix=\"/\">" >> ${file}

for i in $(find src/controls/ -name *.qml); do echo -e "        <file alias=\"${i#src/controls/}\">${i}</file>" >> ${file} ; done
for i in $(find src/styles/ -name *.qml); do echo -e "        <file alias=\"${i#src/}\">${i}</file>" >> ${file} ; done

echo "    </qresource>" >> ${file}
echo "</RCC>" >> ${file}
