---
title: "Version 26.11"
date: 2026-11-10T12:00:00+01:00
anchor: "v26_11"
weight: 21
---

## Version 26.11

First release of the [wojtekadams/klogg](https://github.com/wojtekadams/klogg) fork. It brings klogg up to date
with current toolchains and libraries; the uplift was done with [Claude Code](https://claude.com/claude-code).

### Platforms
 - Windows x64: installer and portable zip
 - Ubuntu 24.04 and 26.04: deb packages
 - Any Linux with glibc 2.35 or newer: AppImage (with Wayland support)
 - macOS on Apple Silicon: dmg (not signed yet)

### Changes
 - Builds with GCC 13-15, MSVC 2026, Apple Clang, CMake 4 and Qt 6.4 - 6.10
 - Updated third-party libraries (efsw, CRoaring, simdutf, Catch2, mimalloc, vectorscan, oneTBB and more)
 - Windows uses the native schannel TLS backend instead of bundling OpenSSL 1.1
 - Sentry crash reporting and the Discord integration were removed
 - Update check and issue reporting point to this fork

Builds for 32-bit Windows, macOS on Intel, Oracle Linux and older Ubuntu releases are no longer provided.
