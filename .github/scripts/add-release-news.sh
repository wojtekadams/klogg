#!/usr/bin/env bash
# Creates a website news post for a release.
# Usage: add-release-news.sh <tag> <klogg version> <commit sha>
# Run from the repository root; needs full git history and tags for the change list.
set -euo pipefail

tag=${1:?release tag}
version=${2:?klogg version}
sha=${3:?commit sha}
repo=${GITHUB_REPOSITORY:-wojtekadams/klogg}

news_dir=docs/content/news
slug=$(echo "$tag" | tr -c 'A-Za-z0-9._-' '_' | sed 's/_*$//')
post="$news_dir/release_${slug}.md"

if [ -e "$post" ]; then
  echo "News post $post already exists, keeping it"
  exit 0
fi

# changes since the previous release tag (ignoring the rolling 'continuous' tag)
previous=$(git describe --tags --abbrev=0 --exclude 'continuous*' --exclude "$tag" "${sha}^" 2>/dev/null || true)
if [ -n "$previous" ]; then
  range="$previous..$sha"
  changes_title="Changes since $previous"
else
  range="$sha"
  changes_title="Recent changes"
fi
changes=$(git log --no-merges --format='- %s' --max-count=40 "$range" \
  | grep -v -i -E '^- (merge |wip|fixup)' || true)

display_tag=${tag#v}

cat > "$post" <<EOF
---
title: "Version ${display_tag}"
date: $(date -u +%Y-%m-%dT%H:%M:%S%:z)
---

## Version ${display_tag}

klogg ${version} is available on the [release page](https://github.com/${repo}/releases/tag/${tag}).

### Packages
 - Windows x64: \`klogg-${version}-x64-Qt6-setup.exe\` installer or \`klogg-${version}-x64-Qt6-portable.zip\`
 - Ubuntu 24.04 / 26.04: \`klogg-${version}-noble.deb\` / \`klogg-${version}-resolute.deb\`
 - Other Linux (glibc 2.35+): \`klogg-${version}-x86_64.AppImage\`
 - macOS (Apple Silicon): \`klogg-${version}-mac-arm64.dmg\`

### ${changes_title}
${changes:-- Maintenance release}
EOF

echo "Created $post:"
cat "$post"
