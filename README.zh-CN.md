# ui

[English](README.md) | [简体中文](README.zh-CN.md)

模块身份和依赖见 [module.norm](ui/module.norm)，发布使用的工具链见[工作流](.github/workflows/package.yml)。

构建：`norm package ui --output build/repository`。

测试：`norm test ui`。

从[窗口与按钮示例](samples/README.zh-CN.md)开始使用。

原生控件扩展入口见 [NativeView 与 Widget 转换](ui/native.norm)，JavaFX 节点桥见 [JavaFX 渲染适配](https://github.com/normlanguage/ui-fx/blob/main/ui/fx/backend.norm)。

核心层提供状态、组件树、渲染协议和生命周期。桌面启动与 JavaFX 实现见 [ui.fx](https://github.com/normlanguage/ui-fx)，页面控件见 [ui.kit](https://github.com/normlanguage/ui-component)。
