#!/bin/zsh
cached firecrawl-map https://code.claude.com/docs/ > ~/dev/official-docs/claude-code/docs-map.json
jq .links ./docs-map.json -r | yq '.[]' -P > ./docs-map.txt
cat ./docs-map.txt | xargs -n1 -I{} env zsh -ic 'uv run /Users/giladbarnea/.claude/skills/robust-fetch/scripts/robust_fetch.py {} > "$(topathlike {} -f)"'