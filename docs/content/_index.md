---
title: "klogg"
lead: "klogg is a free, open source GUI application for browsing and searching through huge, complex log files. Think of it as a fast, interactive combination of grep, less and tail."
screenshots:
  - src: screenshots/dark.png
    caption: Dark mode
  - src: screenshots/highlighters.png
    caption: Highlighter sets
  - src: screenshots/scratchpad.png
    caption: Scratchpad
---

## Why klogg

<div class="features">

**Fast on huge files**<br>
Reads files directly from disk instead of loading them into memory. 10 GB logs are not a problem.

**Powerful search**<br>
Perl-compatible regular expressions, combined with AND, OR and NOT. Results are shown separately from the file.

**Clear view**<br>
Highlighter sets color the log and the matches, an overview bar shows where the matches are.

**Follows changes**<br>
Watches files on disk and reloads them as they grow, like `tail -f`.

**Any encoding**<br>
Detects UTF-8, UTF-16, CP1251 and many other encodings automatically.

**Small things that help**<br>
Scratchpad, favorite files, tab renaming, archive extraction, dark mode, configurable shortcuts.

</div>

## About this fork

This site belongs to [wojtekadams/klogg](https://github.com/wojtekadams/klogg), a maintenance fork of
[klogg](https://github.com/variar/klogg) by Anton Filimonov, which started as a fork of
[glogg](https://github.com/nickbnf/glogg) by Nicolas Bonnefon.
The fork brings klogg up to date with current compilers, Qt 6 and libraries; the uplift was done with
[Claude Code](https://claude.com/claude-code).
