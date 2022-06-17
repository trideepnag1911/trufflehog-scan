!#/bin/sh
set -e

if [[ -f "$EXCLUDE_PATH" ]]; then
    echo "Running Trufflehog with exclude paths $EXCLUDE_PATH"
    trufflehog --exclude_paths $EXCLUDE_PATH $GITHUB_WORKSPACE
else
    echo "Running Trufflehog without exclude path filters on Workspace $GITHUB_WORKSPACE"
    trufflehog $GITHUB_WORKSPACE
fi
