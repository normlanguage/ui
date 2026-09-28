# UI 示例

[English](README.md)

[hello.norm](hello.norm) 会打开一个计数窗口。点击 **Click me**，窗口中的数字随之增加。普通的 `clicks` 字段驱动视图，字段变化时由 UI 库更新窗口。

在 Windows x64 上，从仓库根目录运行：

```shell
norm run samples/hello.norm
```

示例在源文件内声明 `ui` 依赖。UI 包从 Maven Central 解析 JavaFX。公开 API 入口见 [UI 模块](../ui/module.norm)，`DesktopApp` 和 `runApp` 见[应用入口](../ui/application.norm)。
