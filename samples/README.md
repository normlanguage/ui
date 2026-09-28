# UI samples

[简体中文](README.zh-CN.md)

[hello.norm](hello.norm) opens a window with a counter. Click **Click me** to increase the displayed count. The ordinary `clicks` field drives the view; the UI library updates it when the field changes.

On Windows x64, run from the repository root:

```shell
norm run samples/hello.norm
```

The sample declares its `ui` dependency in the source file. The UI package resolves JavaFX from Maven Central. See the [UI module](../ui/module.norm) for exported API and [application entry point](../ui/application.norm) for `DesktopApp` and `runApp`.
