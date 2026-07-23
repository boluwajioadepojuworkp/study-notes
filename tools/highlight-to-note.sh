#!/bin/env bash
# highlight-to-note.sh : Convert book/article highlights to Markdown study notes
# Adapted from Michael Neuper's koreader-org-converter (md2org.sh)
# Original: https://github.com/michaelneuper/koreader-org-converter
#
# Usage: ./highlight-to-note.sh highlights.md "Course Name"

INPUT="$1"
COURSE="${2:-General}"

if [ "$#" -lt 1 ]; then
    echo "Usage: $0 highlights.md [Course Name]"
    exit 1
fi

if [ ! -f "$INPUT" ]; then
    echo "Input file not found: $INPUT"
    exit 1
fi

OUTPUT_DIR="content/courses/${COURSE// /-}"
mkdir -p "$OUTPUT_DIR"

# Extract title from first line
TITLE=$(head -1 "$INPUT" | sed 's/^# //')
AUTHOR=$(head -3 "$INPUT" | grep -v '^#' | grep -v '^$' | head -1)

echo "---" > "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
echo "title: Highlights from $TITLE" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
echo "source: $TITLE by $AUTHOR" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
echo "course: [[courses/index|$COURSE]]" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
echo "---" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
echo "" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
echo "# Highlights: $TITLE" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
echo "" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"

while IFS= read -r line; do
    case "$line" in
        "### "*)
            # Extract date and create timestamped section
            CHAPTER=$(echo "$line" | sed 's/^### //' | sed 's/@.*//' | xargs)
            DATE=$(echo "$line" | grep -o '@.*' | sed 's/@ //' | xargs)
            echo "" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
            echo "## $CHAPTER" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
            if [ -n "$DATE" ]; then
                echo "> Highlighted: $DATE" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
            fi
            echo "" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
            ;;
        "## "*)
            echo "" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
            echo "# $(echo "$line" | sed 's/^## //')" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
            ;;
        "# "*)
            ;;
        "")
            ;;
        "_Generated"*)
            ;;
        *)
            echo "> $line" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
            echo "" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
            ;;
    esac
done < "$INPUT"

echo "" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
echo "---" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"
echo "*Highlights converted on $(date +%Y-%m-%d). Review these and write proper notes from memory using the 5-Step Method.*" >> "$OUTPUT_DIR/_highlights-${TITLE// /-}.md"

echo "Done! Output: $OUTPUT_DIR/_highlights-${TITLE// /-}.md"
echo ""
echo "Next steps:"
echo "  1. Read the highlights file"
echo "  2. For each highlight, write ONE note from memory"
echo "  3. Use the note template: content/templates/note-template.md"
echo "  4. Link notes together with [[wikilinks]]"
