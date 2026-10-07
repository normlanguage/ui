# ui

[English](README.md) | [简体中文](README.zh-CN.md)

Module identity and dependencies: [module.norm](ui/module.norm). Package toolchain: [workflow](.github/workflows/package.yml).

Build with PowerShell 7: `./scripts/package.ps1`. Use the compiler pinned by the workflow linked above.

Tests: `norm test ui`.

Run `norm run samples/state` for a backend-independent state example (prints `2`, then `6`). See [samples](samples/README.md) for desktop and web entry points.

Native control extension points are indexed in [NativeView and Widget conversion](ui/native.norm) and the [JavaFX renderer adapter](https://github.com/normlanguage/ui.fx/blob/main/ui/fx/backend.norm).

Backend-neutral core. Desktop entry points and JavaFX rendering belong to [ui.fx](https://github.com/normlanguage/ui.fx). JavaFX page controls belong to [ui.fx.kit](https://github.com/normlanguage/ui.fx.kit). The Vaadin web backend is [ui.web](https://github.com/normlanguage/ui.web).

Reactive mount ownership is verified in [rendering tests](ui/tests/test/rendering/case.norm).

Public layouts and constraints: [layout protocol](ui/layout.norm), [layout widgets](ui/layouts.norm). Basic text and editing: [elements](ui/elements.norm).

Theme integration consumes the independent `ui.theme` module: [ThemeProvider](ui/theme.norm). Typography, text direction and motion preferences: [UiProvider](ui/configuration.norm). Platform types do not appear in these contracts.

Behavioral acceptance: [layout identity](ui/tests/test/layout/case.norm), [theme ownership](ui/tests/test/theme/case.norm), [configuration inheritance](ui/tests/test/configuration/case.norm).

Repository requirements: [package-standards](https://github.com/normlanguage/package-standards). Licensed under [MPL-2.0](LICENSE).

API and lifecycle contracts: [documentation index](docs/README.md).
