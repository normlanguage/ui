# ui

[English](README.md) | [简体中文](README.zh-CN.md)

Module identity and dependencies: [module.norm](ui/module.norm). Package toolchain: [workflow](.github/workflows/package.yml).

Build: `norm package ui --output build/repository`.

Tests: `norm test ui`.

Start with the [window and button sample](samples/README.md).

Native control extension points are indexed in [NativeView and Widget conversion](ui/native.norm) and the [JavaFX renderer adapter](https://github.com/normlanguage/ui-fx/blob/main/ui/fx/backend.norm).

Backend-neutral core. Desktop entry points and JavaFX rendering belong to [ui.fx](https://github.com/normlanguage/ui-fx). Page controls belong to [ui.kit](https://github.com/normlanguage/ui-component).

Reactive mount ownership is verified in [rendering tests](ui/tests/test/rendering/case.norm).
