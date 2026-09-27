# ui

[English](README.md) | [简体中文](README.zh-CN.md)

Module identity and dependencies: [module.norm](ui/module.norm). Package toolchain: [workflow](.github/workflows/package.yml).

Build: `norm package ui --output build/repository`.

Tests: `norm test ui`.

Start with the [window and button sample](samples/README.md).

Validated on Windows x64 with JVM execution and Native application startup. JavaFX artifacts are resolved from Maven Central; Norm packages are distributed through GitHub Releases.
