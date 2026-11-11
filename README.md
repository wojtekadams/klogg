<p align="center">
  <img src="docs/klogg.svg" alt="klogg logo" width="128" height="128">
</p>

<h1 align="center">klogg</h1>

<p align="center">
  A fast, smart log explorer. Browse and search through huge log files with regular expressions –
  like grep, less and tail combined in one window.
</p>

<p align="center">
  <a href="https://github.com/wojtekadams/klogg/releases/latest"><b>Download</b></a> ·
  <a href="https://wojtekadams.github.io/klogg/">Website</a> ·
  <a href="DOCUMENTATION.md">Documentation</a>
</p>

<p align="center">
  <a href="https://github.com/wojtekadams/klogg/releases/latest"><img src="https://img.shields.io/github/v/release/wojtekadams/klogg?style=flat&label=release" alt="Latest release"></a>
  <a href="https://github.com/wojtekadams/klogg/actions/workflows/ci-build.yml"><img src="https://github.com/wojtekadams/klogg/actions/workflows/ci-build.yml/badge.svg" alt="CI Build"></a>
  <a href="COPYING"><img src="https://img.shields.io/github/license/wojtekadams/klogg.svg?style=flat" alt="License: GPL v3"></a>
</p>

![klogg window with a log file on top and search results below](docs/screenshots/mainwindow.png)

Free and open source · GPL v3 · Windows, Linux and macOS

## What it does

- **Opens huge files instantly** – reads files straight from disk instead of loading them into memory, so 10 GB logs are not a problem.
- **Powerful search** – Perl-compatible regular expressions that can be combined with AND, OR and NOT. Matches are listed in a separate view.
- **Highlights what matters** – sets of highlighters color the log and the matches, an overview bar shows where they are in the file.
- **Follows growing files** – watches files on disk and reloads them as they change, like `tail -f`.
- **Any encoding** – detects UTF-8, UTF-16, CP1251 and many other encodings automatically.
- **Small things that help** – scratchpad, favorite files, color labels, archive extraction, dark mode and configurable shortcuts.

## Download

Get the file for your system from the [latest release](https://github.com/wojtekadams/klogg/releases/latest)
(or the [development build](https://github.com/wojtekadams/klogg/releases/tag/continuous)):

| System | File |
| --- | --- |
| Windows 10/11 (64-bit) | `…-x64-Qt6-setup.exe` or `…-portable.zip` |
| Ubuntu 24.04 | `…-noble.deb` |
| Ubuntu 26.04 | `…-resolute.deb` |
| Other Linux (glibc 2.35+) | `…-x86_64.AppImage` |
| macOS on Apple Silicon | `…-mac-arm64.dmg` |

## Getting started

1. Install the package: run the Windows installer, `sudo apt install ./klogg-*.deb` on Ubuntu,
   or `chmod +x` and start the AppImage.
2. Open a log file – drag it onto the window or use <kbd>Ctrl</kbd>+<kbd>O</kbd>.
3. Type a regular expression in the search box and press <kbd>Enter</kbd>. Matching lines appear below the log.
4. Press <kbd>f</kbd> to follow the end of the file while it grows.

## Shortcuts

| Keys | Action |
| --- | --- |
| <kbd>Ctrl</kbd>+<kbd>S</kbd> | Focus the search box |
| <kbd>j</kbd> / <kbd>k</kbd> | Move the selection down / up |
| <kbd>g</kbd> / <kbd>Shift</kbd>+<kbd>G</kbd> | Jump to the first / last line |
| <kbd>Ctrl</kbd>+<kbd>L</kbd> | Jump to a line number |
| <kbd>'</kbd> then <kbd>n</kbd> / <kbd>N</kbd> | Quick find on screen, next / previous match |
| <kbd>*</kbd> / <kbd>/</kbd> | Next / previous occurrence of the selected text |
| <kbd>m</kbd>, <kbd>[</kbd> / <kbd>]</kbd> | Mark a line, jump to previous / next mark |
| <kbd>f</kbd> | Follow mode (like `tail -f`) |
| <kbd>F5</kbd> | Reload the file |
| <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>O</kbd> | Switch between opened files |

All shortcuts can be changed in the options. See the [documentation](DOCUMENTATION.md) for the full list
and everything else klogg can do.

## Good to know

- The macOS app is not signed yet: on first start right-click it and choose *Open*, or run
  `xattr -dr com.apple.quarantine /Applications/klogg.app`.
- AppImages need FUSE 2 – on recent Ubuntu install `libfuse2t64`.
- klogg sends no telemetry. It only checks for updates about once a week by downloading a small file
  from GitHub; this can be turned off in the options.
- Versions follow [calendar versioning](https://calver.org/): `26.11` means November 2026.

## About this fork

This repository is a maintenance fork of [klogg](https://github.com/variar/klogg) by Anton Filimonov,
which started in 2016 as a fork of [glogg](https://github.com/nickbnf/glogg) by Nicolas Bonnefon.
It brings klogg up to date with current compilers, Qt 6 and libraries. The uplift was done with
[Claude Code](https://claude.com/claude-code) under human review; every change went through CI on all supported platforms.

Compared to upstream klogg (v24.11 development branch):

- builds with GCC 13–15, MSVC 2026, Apple Clang, CMake 4 and Qt 6.4–6.10
- updated third-party libraries (efsw, CRoaring, simdutf, Catch2 3, mimalloc 3, vectorscan, oneTBB, …)
- packages for Ubuntu 24.04/26.04, AppImage, Windows x64 and macOS on Apple Silicon;
  32-bit Windows, macOS on Intel, Oracle Linux and older Ubuntu releases are no longer built
- no Sentry crash reporting and no Discord integration; Windows uses the native TLS backend instead of OpenSSL 1.1
- modernized GitHub Actions CI and release workflow

Packages of the original klogg are available from [variar/klogg releases](https://github.com/variar/klogg/releases/latest),
[Homebrew](https://formulae.brew.sh/cask/klogg) and Linux distribution [repositories](https://repology.org/project/klogg/versions).
The [changelog](CHANGELOG.md) covers upstream changes up to the fork point.

## Building and contributing

See [BUILD.md](BUILD.md) for building klogg yourself and [CONTRIBUTING.md](CONTRIBUTING.md) for how to contribute.
Bugs and ideas for this fork go to the [issues page](https://github.com/wojtekadams/klogg/issues).

## License

klogg is free software licensed under the GNU GPL v3 or later – see [COPYING](COPYING).
It is built with many open source libraries listed in [NOTICE](NOTICE).

## Authors

* **[Anton Filimonov](https://github.com/variar)** - klogg
* *Initial work* - **[Nicolas Bonnefon](https://github.com/nickbnf)** - glogg
* *Fork maintenance* - **[wojtekadams](https://github.com/wojtekadams)**, uplift done with [Claude Code](https://claude.com/claude-code)

See also the list of [contributors](https://klogg.filimonov.dev/docs/getting_involved/#contributors) who participated in this project.
