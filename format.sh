#!/bin/bash

set -e
shopt -s nullglob

info="// info: https://rb.gy/9c11h"

for file in *.cs; do
    if [ "$(head -n 1 "${file}")" != "${info}" ]; then
        echo "${info}
$(cat "${file}")" > "${file}"
    fi
done
