# Claude Code Documentation Fetcher

This directory contains scripts to fetch and maintain the latest Claude Code documentation from code.claude.com.

## Files

- **`code-claude-com.json`** - List of all documentation URLs to fetch
- **`run.sh`** - Main fetch script using jina.ai
- **`cleanup-docs.py`** - Standalone Python script to clean existing markdown files

## Usage

### Fetch All Documentation

```bash
cd claude-code
./run.sh
```

This will:
1. Read all URLs from `code-claude-com.json`
2. Fetch each page using jina.ai reader (https://r.jina.ai/)
3. Clean up markdown content (remove jina.ai headers, navigation junk, etc.)
4. Save files using the naming convention: `code.claude.com-docs-en-{page}.md`

### Clean Existing Files

To clean up existing markdown files without re-fetching:

```bash
cd claude-code
python3 cleanup-docs.py
```

## Naming Convention

Files are named by replacing forward slashes with hyphens:

```
URL: code.claude.com/docs/en/overview
File: code.claude.com-docs-en-overview.md

URL: code.claude.com/docs/en/sdk/sdk-overview
File: code.claude.com-docs-en-sdk-sdk-overview.md
```

## What Gets Cleaned

The cleanup process removes:

- Jina.ai metadata headers (Title:, URL Source:, etc.)
- Jina.ai promotional footers
- Navigation elements ([Skip to content], etc.)
- Horizontal rule artifacts (___)
- Excessive blank lines (max 2 consecutive)
- Trailing whitespace

## Documentation Coverage

### Main Documentation (49 pages)
All main `/docs/en/` pages including:
- Getting started (overview, quickstart, common-workflows)
- Configuration (settings, hooks, mcp, etc.)
- Deployment (cloud providers, CI/CD, enterprise)
- Reference (CLI, slash commands, plugins)

### SDK Documentation (8 pages)
All `/docs/en/sdk/` pages:
- sdk-overview
- sdk-permissions
- sdk-typescript
- sdk-python
- sdk-sessions
- sdk-slash-commands
- custom-tools
- streaming-vs-single-mode

### Special Pages (2)
- changelog - Version history and release notes
- claude-code-docs-map - Full documentation index

**Total: 59 pages**

## Recent Updates

### 2026-01-10
- Updated to use jina.ai for fetching (r.jina.ai)
- Added 10 missing pages (changelog, docs-map, SDK docs)
- Improved markdown cleanup to remove junk elements
- Switched from firecrawl to jina.ai for better reliability
- Created standalone cleanup script for existing files

## Requirements

- `bash` or compatible shell
- `curl` - For fetching from jina.ai
- `jq` - For parsing JSON file
- `sed` - For text processing
- `python3` - For cleanup script (optional)

## Notes

- The script includes 1-second delays between requests for rate limiting
- Failed fetches are reported at the end
- Existing files are overwritten when re-fetching
- The cleanup preserves useful footer content (like llms.txt references)
