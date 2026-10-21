#!/bin/bash
set -e

FILE=${FILE:-data.txt}

echo "Starting vowel frequency analyzer on $FILE..."
FREQ_RESULT=$(python /app/.github/scripts/frequency.py "$FILE")
echo "Result: $FREQ_RESULT"

bash /app/.github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"
echo "README.md updated successfully"
