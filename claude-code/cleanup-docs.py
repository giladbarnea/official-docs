#!/usr/bin/env python3
"""
Clean up Claude Code documentation markdown files.
Removes junk elements from the beginning and end of pages.
"""

import re
import sys
from pathlib import Path


def clean_markdown(content: str) -> str:
    """
    Clean markdown content by removing junk elements.

    Args:
        content: Raw markdown content

    Returns:
        Cleaned markdown content
    """
    lines = content.split('\n')

    # Patterns to remove from anywhere
    junk_patterns = [
        r'^Title:\s+.*$',
        r'^URL Source:\s+.*$',
        r'^Markdown Content:\s*$',
        r'^Powered by Jina AI.*$',
        r'^Fetched by Jina AI.*$',
        r'^\[Skip to content\].*$',
        r'^\[Home\].*\[Docs\].*$',
        r'^___$',  # Horizontal rules at start/end
    ]

    # Clean each line
    cleaned_lines = []
    for line in lines:
        # Check if line matches any junk pattern
        is_junk = any(re.match(pattern, line.strip()) for pattern in junk_patterns)
        if not is_junk:
            cleaned_lines.append(line.rstrip())

    # Join lines back
    content = '\n'.join(cleaned_lines)

    # Remove multiple consecutive blank lines (keep max 2)
    content = re.sub(r'\n{4,}', '\n\n\n', content)

    # Remove jina.ai footer section if present
    # Typically starts with "---" and contains "Jina AI"
    content = re.sub(
        r'\n---\s*\n.*?Jina AI.*?$',
        '',
        content,
        flags=re.DOTALL | re.MULTILINE
    )

    # Remove leading blank lines
    content = content.lstrip('\n')

    # Remove trailing blank lines (keep one newline at end)
    content = content.rstrip('\n') + '\n'

    # Remove common header navigation blocks
    # Pattern: multiple links in brackets at the very start
    content = re.sub(
        r'^(\[.*?\]\(.*?\)\s*){3,}\n+',
        '',
        content,
        flags=re.MULTILINE
    )

    return content


def cleanup_file(filepath: Path) -> bool:
    """
    Clean up a single markdown file.

    Args:
        filepath: Path to the markdown file

    Returns:
        True if file was modified, False otherwise
    """
    try:
        # Read original content
        original = filepath.read_text(encoding='utf-8')

        # Clean content
        cleaned = clean_markdown(original)

        # Check if content changed
        if cleaned != original:
            # Write cleaned content
            filepath.write_text(cleaned, encoding='utf-8')
            print(f"✓ Cleaned: {filepath.name}")
            return True
        else:
            print(f"  Skipped (no changes): {filepath.name}")
            return False

    except Exception as e:
        print(f"✗ Error processing {filepath.name}: {e}", file=sys.stderr)
        return False


def main():
    """Main function to clean all markdown files."""
    script_dir = Path(__file__).parent

    # Find all .md files in the directory
    md_files = sorted(script_dir.glob("*.md"))

    if not md_files:
        print("No markdown files found in directory")
        return

    print(f"Found {len(md_files)} markdown files")
    print("=" * 50)
    print()

    modified_count = 0
    for filepath in md_files:
        if cleanup_file(filepath):
            modified_count += 1

    print()
    print("=" * 50)
    print(f"Cleanup complete!")
    print(f"  Modified: {modified_count}")
    print(f"  Unchanged: {len(md_files) - modified_count}")


if __name__ == "__main__":
    main()
