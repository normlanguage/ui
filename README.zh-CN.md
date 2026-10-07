# ui

[English](README.md) | [简体中文](README.zh-CN.md)

模块身份和依赖见 [module.norm](ui/module.norm)，发布使用的工具链见[工作流](.github/workflows/package.yml)。

构建：`norm package ui --output build/repository`。

测试：`norm test ui`。

从[窗口与按钮示例](samples/README.zh-CN.md)开始使用。

原生控件扩展入口见 [NativeView 与 Widget 转换](ui/native.norm)，JavaFX 节点桥见 [JavaFX 渲染适配](https://github.com/normlanguage/ui.fx/blob/main/ui/fx/backend.norm)。

核心层提供状态、组件树、渲染协议和生命周期。桌面启动与 JavaFX 实现见 [ui.fx](https://github.com/normlanguage/ui.fx)，JavaFX 页面控件见 [ui.fx.kit](https://github.com/normlanguage/ui.fx.kit)，Vaadin Web 后端见 [ui.web](https://github.com/normlanguage/ui.web)。

公共布局与约束：[布局协议](ui/layout.norm)、[布局 Widget](ui/layouts.norm)。基础文字与输入：[elements](ui/elements.norm)。

主题接入复用独立的 `ui.theme` 模块，入口见 [ThemeProvider](ui/theme.norm)。字体、文字方向与动效偏好见 [UiProvider](ui/configuration.norm)。这些公共协议不暴露具体平台类型。

行为验收索引：[布局身份](ui/tests/test/layout/case.norm)、[主题资源与继承](ui/tests/test/theme/case.norm)、[配置继承](ui/tests/test/configuration/case.norm)。
