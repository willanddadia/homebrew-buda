# Buda

A small native Mac editor for checking code: open a folder, find a file, read it, see what
changed and why, make a small edit. Apple Silicon, macOS 26.

```sh
brew install --cask willanddadia/buda/buda
```

This installs `Buda.app` and the `buda` command (`buda .`, `buda file.ts:42`).

Buda is signed ad hoc, not notarized. The first time, macOS blocks it: open
System Settings → Privacy & Security and choose "Open Anyway" (or install with
`--no-quarantine`).

This repository holds the Homebrew cask and the release downloads.
