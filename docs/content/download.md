---
title: "Download"
description: "Download klogg for Windows, Linux and macOS"
---

<p class="actions">
  <a class="button primary" href="https://github.com/wojtekadams/klogg/releases/latest">Latest release</a>
  <a class="button" href="https://github.com/wojtekadams/klogg/releases/tag/continuous">Development build</a>
  <a class="button" href="https://github.com/wojtekadams/klogg/releases">All releases</a>
</p>

Every release contains packages for all supported platforms. Pick the file for your system:

| System | File |
| --- | --- |
| Windows 10/11 (64-bit) | `klogg-<version>-x64-Qt6-setup.exe` (installer) or `…-portable.zip` |
| Ubuntu 24.04 | `klogg-<version>-noble.deb` |
| Ubuntu 26.04 | `klogg-<version>-resolute.deb` |
| Other Linux (glibc 2.35 or newer) | `klogg-<version>-x86_64.AppImage` |
| macOS on Apple Silicon | `klogg-<version>-mac-arm64.dmg` |

## Installing

**Windows** – run the installer, or unpack the portable zip anywhere and start `klogg_portable.exe`.

**Ubuntu** – install the package with apt:

```
sudo apt install ./klogg-<version>-noble.deb
```

**AppImage** – make the file executable and run it. AppImages need FUSE 2
(`sudo apt install libfuse2t64` on recent Ubuntu):

```
chmod +x klogg-*.AppImage
./klogg-*.AppImage
```

**macOS** – open the dmg and drag klogg to Applications. The app is not signed yet, so macOS blocks
the first start: right-click klogg and choose *Open*, or run

```
xattr -dr com.apple.quarantine /Applications/klogg.app
```

## Original klogg

Packages of the original klogg, without the changes from this fork, are available from
[variar/klogg releases](https://github.com/variar/klogg/releases/latest),
[Homebrew](https://formulae.brew.sh/cask/klogg) and Linux distribution
[repositories](https://repology.org/project/klogg/versions).
