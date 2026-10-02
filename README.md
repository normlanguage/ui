# ui

[English](README.md) | [简体中文](README.zh-CN.md)

Module identity and dependencies: [module.norm](ui/module.norm). Package toolchain: [workflow](.github/workflows/package.yml).

Build: `norm package ui --output build/repository`.

Tests: `norm test ui`.

Start with the [window and button sample](samples/README.md).

Native control extension points are indexed in [NativeView and Widget conversion](ui/native.norm) and the [JavaFX renderer adapter](ui/javafx.norm).

Validated on Windows x64 with JVM execution and Native application startup. JavaFX artifacts are resolved from Maven Central; Norm packages are distributed through GitHub Releases.
