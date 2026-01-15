#!/bin/zsh
mc https://code.claude.com/docs -j ./map.json
while read -r url; do log.debug "$url"; cached rf "https://$url" > "${url##*/}"; done <<(jq '.urls[]' ./map.json -r)
