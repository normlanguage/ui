# ui

[English](README.md) | [简体中文](README.zh-CN.md)

模块身份和依赖见 [module.norm](ui/module.norm)，发布使用的工具链见[工作流](.github/workflows/package.yml)。

构建：`norm package ui --output build/repository`。

测试：`norm test ui`。

从[窗口与按钮示例](samples/README.zh-CN.md)开始使用。

原生控件扩展入口见 [NativeView 与 Widget 转换](ui/native.norm)，JavaFX 节点桥见 [JavaFX 渲染适配](ui/javafx.norm)。

已在 Windows x64 验证 JVM 执行和 Native 应用启动。JavaFX 制品从 Maven Central 解析；Norm 包通过 GitHub Releases 分发。
