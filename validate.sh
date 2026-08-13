#!/usr/bin/env bash
tofu fmt --recursive
cd example/examplea || return
rm .terraform -fr 2>/dev/null
tofu init -upgrade
tofu validate
make valid
