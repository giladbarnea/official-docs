#!/bin/bash

# Fetch Claude Code documentation using jina.ai and clean up the markdown

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
JSON_FILE="$SCRIPT_DIR/code-claude-com.json"
OUTPUT_DIR="$SCRIPT_DIR"

# Function to convert URL to filename using the naming convention
url_to_filename() {
    local url="$1"
    # Remove https:// prefix
    local path="${url#https://}"
    # Replace / with -
    local filename="${path//\//-}"
    echo "${OUTPUT_DIR}/${filename}.md"
}

# Function to clean markdown content
clean_markdown() {
    local content="$1"

    # Save to temp file for processing
    local tmpfile=$(mktemp)
    echo "$content" > "$tmpfile"

    # Remove jina.ai metadata headers (Title:, URL Source:, etc.)
    sed -i -E '/^Title: /d' "$tmpfile"
    sed -i -E '/^URL Source: /d' "$tmpfile"
    sed -i -E '/^Markdown Content:$/d' "$tmpfile"
    sed -i -E '/^Published Time: /d' "$tmpfile"
    sed -i -E '/^Author: /d' "$tmpfile"

    # Remove jina.ai promotional content
    sed -i -E '/^Powered by Jina AI/d' "$tmpfile"
    sed -i -E '/^Fetched by Jina AI/d' "$tmpfile"
    sed -i -E '/^Reader Mode by Jina AI/d' "$tmpfile"

    # Remove common navigation junk at the start
    sed -i -E '/^\[Skip to (main )?content\]/d' "$tmpfile"
    sed -i -E '/^\[Home\].*\[Docs\]/d' "$tmpfile"

    # Remove horizontal rule dividers that are artifacts (multiple ___ or ---)
    sed -i -E '/^_{3,}$/d' "$tmpfile"

    # Trim trailing whitespace from all lines
    sed -i 's/[[:space:]]*$//' "$tmpfile"

    # Remove leading blank lines
    sed -i -E '/./,$!d' "$tmpfile"

    # Reduce multiple consecutive blank lines to max 2
    sed -i -E 'N;/^\n$/!P;D' "$tmpfile"

    # Output cleaned content and cleanup
    cat "$tmpfile"
    rm -f "$tmpfile"
}

# Function to fetch a single URL
fetch_url() {
    local url="$1"
    local filename=$(url_to_filename "$url")

    echo "Fetching: $url"
    echo "  -> $filename"

    # Fetch using jina.ai
    local raw_content
    if ! raw_content=$(curl -sS -f "https://r.jina.ai/https://$url" 2>/dev/null); then
        echo "  ERROR: Failed to fetch $url" >&2
        return 1
    fi

    # Clean the content
    local cleaned_content
    cleaned_content=$(clean_markdown "$raw_content")

    # Save to file
    echo "$cleaned_content" > "$filename"

    echo "  ✓ Done"
    sleep 1  # Rate limiting
}

# Main execution
main() {
    if [[ ! -f "$JSON_FILE" ]]; then
        echo "ERROR: $JSON_FILE not found" >&2
        exit 1
    fi

    echo "Starting documentation fetch..."
    echo "================================"
    echo ""

    # Read URLs from JSON file and fetch each one
    local count=0
    local failed=0

    while IFS= read -r url; do
        if [[ -n "$url" ]]; then
            if fetch_url "$url"; then
                ((count++))
            else
                ((failed++))
            fi
            echo ""
        fi
    done < <(jq -r '.[]' "$JSON_FILE")

    echo "================================"
    echo "Fetch complete!"
    echo "  Successfully fetched: $count"
    if [[ $failed -gt 0 ]]; then
        echo "  Failed: $failed"
        exit 1
    fi
}

main "$@"
