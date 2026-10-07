# API index

- [Repository standards](https://github.com/normlanguage/package-standards)
- [Module identity and dependencies](../ui/module.norm)
- [Reactive state](../ui/reactive.norm) and [published consumer](../samples/state/application.norm)
- [Widget ownership](../ui/scope.norm) and [rendering protocol](../ui/rendering.norm)
- [Layout protocol](../ui/layout.norm) and [layout widgets](../ui/layouts.norm)
- [Theme scope](../ui/theme.norm) and [configuration](../ui/configuration.norm)
- [Scheduler and task tracker](../ui/tasks.norm), with [completion and disposal tests](../ui/tests/test/reactive/task_tracker.norm)

Backend schedulers serialize tracker access on their event loop. A tracker records termination signals; `ViewScope` owns cancellation. Desktop shutdown awaits tracked termination before releasing the tracker. Web session shutdown releases tracking after closing the renderer.
