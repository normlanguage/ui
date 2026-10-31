# ui Skill

Use this skill to work with Norm module `ui` version 11. Use only declarations listed below.

## `ui`

Source: `configuration.norm`

### `TextDirection`

```norm
enum TextDirection
```

#### `LeftToRight`

```norm
LeftToRight
```

#### `RightToLeft`

```norm
RightToLeft
```

### `UiConfiguration`

```norm
value UiConfiguration
```

#### `fontFamily`

```norm
String fontFamily
```

Type: `String`

#### `fontSize`

```norm
Double fontSize
```

Type: `Double`

#### `direction`

```norm
TextDirection direction
```

Type: `TextDirection`

#### `motionEnabled`

```norm
Boolean motionEnabled
```

Type: `Boolean`

#### `UiConfiguration`

```norm
UiConfiguration(String fontFamily, Double fontSize, TextDirection direction, Boolean motionEnabled)
```

Parameters:

- `fontFamily`: `String`
- `fontSize`: `Double`
- `direction`: `TextDirection`
- `motionEnabled`: `Boolean`

### `ConfiguredRenderNode`

```norm
interface ConfiguredRenderNode extends RenderNode
```

#### `configure`

```norm
Void configure(UiConfiguration configuration)
```

Parameters:

- `configuration`: `UiConfiguration`

Returns: `Void`

### `uiConfiguration`

```norm
UiConfiguration uiConfiguration()
```

Returns: `UiConfiguration`

### `UiProvider`

```norm
value UiProvider implements NativeWidget, NativeView
```

#### `child`

```norm
Widget child
```

Type: `Widget`

#### `configuration`

```norm
UiConfiguration? configuration
```

Type: `UiConfiguration?`

#### `kind`

```norm
String kind()
```

Returns: `String`

#### `nativeView`

```norm
View nativeView()
```

Returns: `View`

#### `children`

```norm
List<View> children(RenderNode node)
```

Parameters:

- `node`: `RenderNode`

Returns: `List<View>`

#### `create`

```norm
RenderNode create(RenderBackend backend, ViewScope scope)
```

Parameters:

- `backend`: `RenderBackend`
- `scope`: `ViewScope`

Returns: `RenderNode`

## `ui`

Source: `elements.norm`

### `Text`

```norm
value Text implements NativeWidget
```

#### `text`

```norm
String text
```

Type: `String`

#### `role`

```norm
WidgetRole role
```

Type: `WidgetRole`

#### `Text`

```norm
Text(String text)
```

Parameters:

- `text`: `String`

#### `Text`

```norm
Text(String text, WidgetRole role)
```

Parameters:

- `text`: `String`
- `role`: `WidgetRole`

#### `nativeView`

```norm
View nativeView()
```

Returns: `View`

### `TextArea`

```norm
value TextArea implements NativeWidget
```

#### `placeholder`

```norm
String placeholder
```

Type: `String`

#### `value`

```norm
Binding<String> value
```

Type: `Binding<String>`

#### `rows`

```norm
Integer rows
```

Type: `Integer`

#### `editable`

```norm
Boolean editable
```

Type: `Boolean`

#### `nativeView`

```norm
View nativeView()
```

Returns: `View`

## `ui`

Source: `foreach.norm`

### `ItemKey`

```norm
interface ItemKey
```

### `ValueKey`

```norm
value ValueKey<T> implements ItemKey
```

Type parameters:

- `T`

#### `value`

```norm
T value
```

Type: `T`

### `ForEach`

```norm
value ForEach<T> implements WidgetCollection
```

Type parameters:

- `T`

#### `ForEach`

```norm
ForEach(List<T> items, Widget child(T task))
```

Parameters:

- `items`: `List<T>`
- `child`: `Function<Widget(T)>`

#### `ForEach`

```norm
ForEach(List<T> items, Function<ItemKey(T)> identity, Widget child(T task))
```

Parameters:

- `items`: `List<T>`
- `identity`: `Function<ItemKey(T)>`
- `child`: `Function<Widget(T)>`

#### `widgets`

```norm
List<Widget> widgets()
```

Returns: `List<Widget>`

## `ui`

Source: `key.norm`

### `TextFieldHandle`

```norm
value TextFieldHandle
```

#### `text`

```norm
String text()
```

Returns: `String`

#### `clear`

```norm
Void clear()
```

Returns: `Void`

#### `focus`

```norm
Void focus()
```

Returns: `Void`

### `Key`

```norm
class Key<T>
```

Type parameters:

- `T`

#### `current`

```norm
T? current()
```

Returns: `T?`

#### `connect`

```norm
Resource connect(T handle)
```

Parameters:

- `handle`: `T`

Returns: `Resource`

### `ViewReference`

```norm
interface ViewReference
```

#### `connect`

```norm
Resource connect(RenderNode node)
```

Parameters:

- `node`: `RenderNode`

Returns: `Resource`

### `TextFieldReference`

```norm
value TextFieldReference implements ViewReference
```

#### `key`

```norm
Key<TextFieldHandle> key
```

Type: `Key<TextFieldHandle>`

#### `connect`

```norm
Resource connect(RenderNode node)
```

Parameters:

- `node`: `RenderNode`

Returns: `Resource`

### `TextFieldControl`

```norm
interface TextFieldControl
```

#### `readText`

```norm
String readText()
```

Returns: `String`

#### `clear`

```norm
Void clear()
```

Returns: `Void`

#### `focus`

```norm
Void focus()
```

Returns: `Void`

## `ui`

Source: `layout.norm`

### `Axis`

```norm
enum Axis
```

#### `Horizontal`

```norm
Horizontal
```

#### `Vertical`

```norm
Vertical
```

### `MainAlignment`

```norm
enum MainAlignment
```

#### `Start`

```norm
Start
```

#### `Center`

```norm
Center
```

#### `End`

```norm
End
```

#### `SpaceBetween`

```norm
SpaceBetween
```

#### `SpaceAround`

```norm
SpaceAround
```

#### `SpaceEvenly`

```norm
SpaceEvenly
```

### `CrossAlignment`

```norm
enum CrossAlignment
```

#### `Start`

```norm
Start
```

#### `Center`

```norm
Center
```

#### `End`

```norm
End
```

#### `Stretch`

```norm
Stretch
```

### `DockArea`

```norm
enum DockArea
```

#### `Top`

```norm
Top
```

#### `Bottom`

```norm
Bottom
```

#### `Left`

```norm
Left
```

#### `Right`

```norm
Right
```

#### `Center`

```norm
Center
```

### `Dimension`

```norm
enum Dimension
```

#### `Content`

```norm
Content
```

#### `Fixed`

```norm
Fixed(Double value)
```

Parameters:

- `value`: `Double`

#### `Fill`

```norm
Fill
```

### `Insets`

```norm
value Insets
```

#### `top`

```norm
Double top
```

Type: `Double`

#### `right`

```norm
Double right
```

Type: `Double`

#### `bottom`

```norm
Double bottom
```

Type: `Double`

#### `left`

```norm
Double left
```

Type: `Double`

### `SizeConstraints`

```norm
value SizeConstraints
```

#### `width`

```norm
Dimension width
```

Type: `Dimension`

#### `height`

```norm
Dimension height
```

Type: `Dimension`

#### `minWidth`

```norm
Double minWidth
```

Type: `Double`

#### `minHeight`

```norm
Double minHeight
```

Type: `Double`

#### `maxWidth`

```norm
Double? maxWidth
```

Type: `Double?`

#### `maxHeight`

```norm
Double? maxHeight
```

Type: `Double?`

### `FlexSizing`

```norm
value FlexSizing
```

#### `grow`

```norm
Double grow
```

Type: `Double`

#### `shrink`

```norm
Double shrink
```

Type: `Double`

### `GridCell`

```norm
value GridCell
```

#### `span`

```norm
Integer span
```

Type: `Integer`

### `GridBreakpoint`

```norm
value GridBreakpoint
```

#### `minimumWidth`

```norm
Double minimumWidth
```

Type: `Double`

#### `columns`

```norm
Integer columns
```

Type: `Integer`

### `LayoutSpec`

```norm
enum LayoutSpec
```

#### `Flex`

```norm
Flex(Axis axis, Double gap, MainAlignment main, CrossAlignment cross, Boolean wrap, List<FlexSizing> items)
```

Parameters:

- `axis`: `Axis`
- `gap`: `Double`
- `main`: `MainAlignment`
- `cross`: `CrossAlignment`
- `wrap`: `Boolean`
- `items`: `List<FlexSizing>`

#### `Grid`

```norm
Grid(Integer columns, Double gap, List<GridCell> items, List<GridBreakpoint> breakpoints)
```

Parameters:

- `columns`: `Integer`
- `gap`: `Double`
- `items`: `List<GridCell>`
- `breakpoints`: `List<GridBreakpoint>`

#### `Box`

```norm
Box(SizeConstraints size, Insets padding)
```

Parameters:

- `size`: `SizeConstraints`
- `padding`: `Insets`

#### `Stack`

```norm
Stack(CrossAlignment horizontal, CrossAlignment vertical)
```

Parameters:

- `horizontal`: `CrossAlignment`
- `vertical`: `CrossAlignment`

#### `Dock`

```norm
Dock(List<DockArea> areas)
```

Parameters:

- `areas`: `List<DockArea>`

#### `Scroll`

```norm
Scroll(Axis axis, Boolean fitWidth, Boolean fitHeight)
```

Parameters:

- `axis`: `Axis`
- `fitWidth`: `Boolean`
- `fitHeight`: `Boolean`

#### `Masonry`

```norm
Masonry(Double minimumColumnWidth, Double gap)
```

Parameters:

- `minimumColumnWidth`: `Double`
- `gap`: `Double`

### `LayoutBackend`

```norm
interface LayoutBackend extends RenderBackend
```

#### `createLayout`

```norm
RenderNode createLayout(LayoutSpec specification)
```

Parameters:

- `specification`: `LayoutSpec`

Returns: `RenderNode`

### `LayoutView`

```norm
value LayoutView implements NativeView
```

#### `specification`

```norm
LayoutSpec specification
```

Type: `LayoutSpec`

#### `content`

```norm
List<View> content
```

Type: `List<View>`

#### `kind`

```norm
String kind()
```

Returns: `String`

#### `children`

```norm
List<View> children(RenderNode node)
```

Parameters:

- `node`: `RenderNode`

Returns: `List<View>`

#### `create`

```norm
RenderNode create(RenderBackend backend, ViewScope scope)
```

Parameters:

- `backend`: `RenderBackend`
- `scope`: `ViewScope`

Returns: `RenderNode`

## `ui`

Source: `layouts.norm`

### `FlexItem`

```norm
value FlexItem
```

#### `content`

```norm
Widget content
```

Type: `Widget`

#### `grow`

```norm
Double grow
```

Type: `Double`

#### `shrink`

```norm
Double shrink
```

Type: `Double`

### `Flex`

```norm
value Flex implements NativeWidget
```

#### `items`

```norm
List<FlexItem> items
```

Type: `List<FlexItem>`

#### `axis`

```norm
Axis axis
```

Type: `Axis`

#### `main`

```norm
MainAlignment main
```

Type: `MainAlignment`

#### `cross`

```norm
CrossAlignment cross
```

Type: `CrossAlignment`

#### `wrap`

```norm
Boolean wrap
```

Type: `Boolean`

#### `gap`

```norm
Double gap
```

Type: `Double`

#### `key`

```norm
NodeKey? key
```

Type: `NodeKey?`

#### `nativeView`

```norm
View nativeView()
```

Returns: `View`

### `GridItem`

```norm
value GridItem
```

#### `content`

```norm
Widget content
```

Type: `Widget`

#### `span`

```norm
Integer span
```

Type: `Integer`

### `Grid`

```norm
value Grid implements NativeWidget
```

#### `items`

```norm
List<GridItem> items
```

Type: `List<GridItem>`

#### `columns`

```norm
Integer columns
```

Type: `Integer`

#### `breakpoints`

```norm
List<GridBreakpoint> breakpoints
```

Type: `List<GridBreakpoint>`

#### `gap`

```norm
Double gap
```

Type: `Double`

#### `key`

```norm
NodeKey? key
```

Type: `NodeKey?`

#### `nativeView`

```norm
View nativeView()
```

Returns: `View`

### `Box`

```norm
value Box implements NativeWidget
```

#### `content`

```norm
Widget content
```

Type: `Widget`

#### `size`

```norm
SizeConstraints size
```

Type: `SizeConstraints`

#### `padding`

```norm
Insets padding
```

Type: `Insets`

#### `key`

```norm
NodeKey? key
```

Type: `NodeKey?`

#### `nativeView`

```norm
View nativeView()
```

Returns: `View`

### `StackLayout`

```norm
value StackLayout implements NativeWidget
```

#### `children`

```norm
List<Widget> children
```

Type: `List<Widget>`

#### `horizontal`

```norm
CrossAlignment horizontal
```

Type: `CrossAlignment`

#### `vertical`

```norm
CrossAlignment vertical
```

Type: `CrossAlignment`

#### `key`

```norm
NodeKey? key
```

Type: `NodeKey?`

#### `nativeView`

```norm
View nativeView()
```

Returns: `View`

### `Dock`

```norm
value Dock implements NativeWidget
```

#### `top`

```norm
Widget? top
```

Type: `Widget?`

#### `bottom`

```norm
Widget? bottom
```

Type: `Widget?`

#### `left`

```norm
Widget? left
```

Type: `Widget?`

#### `right`

```norm
Widget? right
```

Type: `Widget?`

#### `center`

```norm
Widget? center
```

Type: `Widget?`

#### `key`

```norm
NodeKey? key
```

Type: `NodeKey?`

#### `nativeView`

```norm
View nativeView()
```

Returns: `View`

### `Scroll`

```norm
value Scroll implements NativeWidget
```

#### `child`

```norm
Widget child
```

Type: `Widget`

#### `axis`

```norm
Axis axis
```

Type: `Axis`

#### `fitWidth`

```norm
Boolean fitWidth
```

Type: `Boolean`

#### `fitHeight`

```norm
Boolean fitHeight
```

Type: `Boolean`

#### `key`

```norm
NodeKey? key
```

Type: `NodeKey?`

#### `nativeView`

```norm
View nativeView()
```

Returns: `View`

### `Masonry`

```norm
value Masonry implements NativeWidget
```

#### `children`

```norm
List<Widget> children
```

Type: `List<Widget>`

#### `minimumColumnWidth`

```norm
Double minimumColumnWidth
```

Type: `Double`

#### `gap`

```norm
Double gap
```

Type: `Double`

#### `key`

```norm
NodeKey? key
```

Type: `NodeKey?`

#### `nativeView`

```norm
View nativeView()
```

Returns: `View`

### `Row`

```norm
value Row implements NativeWidget
```

#### `children`

```norm
List<Widget> children
```

Type: `List<Widget>`

#### `gap`

```norm
Double gap
```

Type: `Double`

#### `main`

```norm
MainAlignment main
```

Type: `MainAlignment`

#### `cross`

```norm
CrossAlignment cross
```

Type: `CrossAlignment`

#### `wrap`

```norm
Boolean wrap
```

Type: `Boolean`

#### `key`

```norm
NodeKey? key
```

Type: `NodeKey?`

#### `role`

```norm
WidgetRole role
```

Type: `WidgetRole`

#### `enabled`

```norm
Boolean enabled
```

Type: `Boolean`

#### `Row`

```norm
Row(Function<List<Widget>()> content, Double gap, MainAlignment main, CrossAlignment cross, Boolean wrap, NodeKey? key, WidgetRole role, Boolean enabled)
```

Parameters:

- `content`: `Function<List<Widget>()>`
- `gap`: `Double`
- `main`: `MainAlignment`
- `cross`: `CrossAlignment`
- `wrap`: `Boolean`
- `key`: `NodeKey?`
- `role`: `WidgetRole`
- `enabled`: `Boolean`

#### `Row`

```norm
Row(List<Widget> children, Double gap, MainAlignment main, CrossAlignment cross, Boolean wrap, NodeKey? key, WidgetRole role, Boolean enabled)
```

Parameters:

- `children`: `List<Widget>`
- `gap`: `Double`
- `main`: `MainAlignment`
- `cross`: `CrossAlignment`
- `wrap`: `Boolean`
- `key`: `NodeKey?`
- `role`: `WidgetRole`
- `enabled`: `Boolean`

#### `nativeView`

```norm
View nativeView()
```

Returns: `View`

### `Column`

```norm
value Column implements NativeWidget
```

#### `children`

```norm
List<Widget> children
```

Type: `List<Widget>`

#### `gap`

```norm
Double gap
```

Type: `Double`

#### `main`

```norm
MainAlignment main
```

Type: `MainAlignment`

#### `cross`

```norm
CrossAlignment cross
```

Type: `CrossAlignment`

#### `wrap`

```norm
Boolean wrap
```

Type: `Boolean`

#### `key`

```norm
NodeKey? key
```

Type: `NodeKey?`

#### `role`

```norm
WidgetRole role
```

Type: `WidgetRole`

#### `enabled`

```norm
Boolean enabled
```

Type: `Boolean`

#### `Column`

```norm
Column(Function<List<Widget>()> content, Double gap, MainAlignment main, CrossAlignment cross, Boolean wrap, NodeKey? key, WidgetRole role, Boolean enabled)
```

Parameters:

- `content`: `Function<List<Widget>()>`
- `gap`: `Double`
- `main`: `MainAlignment`
- `cross`: `CrossAlignment`
- `wrap`: `Boolean`
- `key`: `NodeKey?`
- `role`: `WidgetRole`
- `enabled`: `Boolean`

#### `Column`

```norm
Column(List<Widget> children, Double gap, MainAlignment main, CrossAlignment cross, Boolean wrap, NodeKey? key, WidgetRole role, Boolean enabled)
```

Parameters:

- `children`: `List<Widget>`
- `gap`: `Double`
- `main`: `MainAlignment`
- `cross`: `CrossAlignment`
- `wrap`: `Boolean`
- `key`: `NodeKey?`
- `role`: `WidgetRole`
- `enabled`: `Boolean`

#### `nativeView`

```norm
View nativeView()
```

Returns: `View`

## `ui`

Source: `native.norm`

### `NativeWidget`

```norm
interface NativeWidget extends Widget
```

#### `nativeView`

```norm
View nativeView()
```

Returns: `View`

#### `build`

```norm
Widget build()
```

Returns: `Widget`

### `NativeView`

```norm
interface NativeView
```

#### `kind`

```norm
String kind()
```

Returns: `String`

#### `children`

```norm
List<View> children(RenderNode node)
```

Parameters:

- `node`: `RenderNode`

Returns: `List<View>`

#### `create`

```norm
RenderNode create(RenderBackend backend, ViewScope scope)
```

Parameters:

- `backend`: `RenderBackend`
- `scope`: `ViewScope`

Returns: `RenderNode`

### `describe`

```norm
View describe(Widget widget)
```

Parameters:

- `widget`: `Widget`

Returns: `View`

### `describeChildren`

```norm
List<View> describeChildren(List<Widget> children)
```

Parameters:

- `children`: `List<Widget>`

Returns: `List<View>`

## `ui`

Source: `reactive.norm`

### `ReactiveRuntime`

```norm
class ReactiveRuntime implements Resource
```

#### `ReactiveRuntime`

```norm
ReactiveRuntime()
```

#### `observe`

```norm
Resource observe(Function<Void()> action)
```

Parameters:

- `action`: `Function<Void()>`

Returns: `Resource`

#### `derive`

```norm
Resource derive(Function<Void()> action)
```

Parameters:

- `action`: `Function<Void()>`

Returns: `Resource`

#### `track`

```norm
Void track(Dependency dependency)
```

Parameters:

- `dependency`: `Dependency`

Returns: `Void`

#### `enqueue`

```norm
Void enqueue(Reaction reaction)
```

Parameters:

- `reaction`: `Reaction`

Returns: `Void`

#### `evaluate`

```norm
Void evaluate(Reaction reaction)
```

Parameters:

- `reaction`: `Reaction`

Returns: `Void`

#### `batch`

```norm
Void batch(Function<Void()> action)
```

Parameters:

- `action`: `Function<Void()>`

Returns: `Void`

#### `flush`

```norm
Void flush()
```

Returns: `Void`

#### `settle`

```norm
Void settle()
```

Returns: `Void`

#### `forget`

```norm
Void forget(Reaction reaction)
```

Parameters:

- `reaction`: `Reaction`

Returns: `Void`

#### `close`

```norm
Void close()
```

Returns: `Void`

### `State`

```norm
class State<T> extends TrackedDependency
```

Type parameters:

- `T`

#### `State`

```norm
State(ReactiveRuntime runtime, T initial)
```

Parameters:

- `runtime`: `ReactiveRuntime`
- `initial`: `T`

#### `peek`

```norm
T peek()
```

Returns: `T`

#### `value`

```norm
T value()
```

Returns: `T`

#### `value`

```norm
Void value(T next)
```

Parameters:

- `next`: `T`

Returns: `Void`

#### `binding`

```norm
Binding<T> binding()
```

Returns: `Binding<T>`

### `Binding`

```norm
value Binding<T>
```

Type parameters:

- `T`

#### `value`

```norm
T value()
```

Returns: `T`

#### `value`

```norm
Void value(T next)
```

Parameters:

- `next`: `T`

Returns: `Void`

### `binding`

```norm
Binding<T> binding<T>(FieldHandle<T> field)
```

Type parameters:

- `T`

Parameters:

- `field`: `FieldHandle<T>`

Returns: `Binding<T>`

### `Computed`

```norm
class Computed<T> implements Resource
```

Type parameters:

- `T`

#### `Computed`

```norm
Computed(ReactiveRuntime runtime, Function<T()> compute)
```

Parameters:

- `runtime`: `ReactiveRuntime`
- `compute`: `Function<T()>`

#### `value`

```norm
T value()
```

Returns: `T`

#### `close`

```norm
Void close()
```

Returns: `Void`

## `ui`

Source: `rendering.norm`

### `RenderNode`

```norm
interface RenderNode extends Resource
```

#### `update`

```norm
Void update(View view)
```

Parameters:

- `view`: `View`

Returns: `Void`

#### `children`

```norm
Void children(List<RenderNode> children)
```

Parameters:

- `children`: `List<RenderNode>`

Returns: `Void`

### `RenderBackend`

```norm
interface RenderBackend
```

#### `create`

```norm
RenderNode create(ViewContent content)
```

Parameters:

- `content`: `ViewContent`

Returns: `RenderNode`

### `TextFieldRenderNode`

```norm
interface TextFieldRenderNode extends RenderNode
```

#### `textFieldHandle`

```norm
TextFieldHandle textFieldHandle()
```

Returns: `TextFieldHandle`

### `Renderer`

```norm
class Renderer implements Resource
```

#### `Renderer`

```norm
Renderer(RenderBackend backend, UiScheduler? scheduler, Container? container)
```

Parameters:

- `backend`: `RenderBackend`
- `scheduler`: `UiScheduler?`
- `container`: `Container?`

#### `render`

```norm
Void render(Widget widget)
```

Parameters:

- `widget`: `Widget`

Returns: `Void`

#### `node`

```norm
RenderNode node()
```

Returns: `RenderNode`

#### `close`

```norm
Void close()
```

Returns: `Void`

## `ui`

Source: `scope.norm`

### `ViewScope`

```norm
class ViewScope implements Resource, ResourceOwner, TaskExecutor, TaskScope
```

#### `ViewScope`

```norm
ViewScope(ReactiveRuntime runtime, UiScheduler? scheduler)
```

Parameters:

- `runtime`: `ReactiveRuntime`
- `scheduler`: `UiScheduler?`

#### `observe`

```norm
Void observe(Widget widget)
```

Parameters:

- `widget`: `Widget`

Returns: `Void`

#### `start`

```norm
Task<T> start<T>(Function<T()> work)
```

Type parameters:

- `T`

Parameters:

- `work`: `Function<T()>`

Returns: `Task<T>`

#### `dispatch`

```norm
Void dispatch(Function<Void()> action)
```

Parameters:

- `action`: `Function<Void()>`

Returns: `Void`

#### `state`

```norm
State<T> state<T>(NodeKey key, T initial)
```

Type parameters:

- `T`

Parameters:

- `key`: `NodeKey`
- `initial`: `T`

Returns: `State<T>`

#### `createState`

```norm
State<T> createState<T>(T initial)
```

Type parameters:

- `T`

Parameters:

- `initial`: `T`

Returns: `State<T>`

#### `remember`

```norm
T remember<T>(NodeKey key, Function<T()> initialize)
```

Type parameters:

- `T`

Parameters:

- `key`: `NodeKey`
- `initialize`: `Function<T()>`

Returns: `T`

#### `own`

```norm
Void own(Resource resource)
```

Parameters:

- `resource`: `Resource`

Returns: `Void`

#### `release`

```norm
Void release(Resource resource)
```

Parameters:

- `resource`: `Resource`

Returns: `Void`

#### `bind`

```norm
Function<Void()> bind(Function<Void()> action)
```

Parameters:

- `action`: `Function<Void()>`

Returns: `Function<Void()>`

#### `within`

```norm
R within<R>(Function<R()> action)
```

Type parameters:

- `R`

Parameters:

- `action`: `Function<R()>`

Returns: `R`

#### `execute`

```norm
Void execute(Function<Void()> action)
```

Parameters:

- `action`: `Function<Void()>`

Returns: `Void`

#### `report`

```norm
Void report(Exception error)
```

Parameters:

- `error`: `Exception`

Returns: `Void`

#### `bind`

```norm
Function<Void(T)> bind<T>(Function<Void(T)> action)
```

Type parameters:

- `T`

Parameters:

- `action`: `Function<Void(T)>`

Returns: `Function<Void(T)>`

#### `close`

```norm
Void close()
```

Returns: `Void`

### `componentBinding`

```norm
Binding<T> componentBinding<T>(Binding<T> source)
```

Type parameters:

- `T`

Parameters:

- `source`: `Binding<T>`

Returns: `Binding<T>`

### `componentCallback`

```norm
Function<Void()> componentCallback(Function<Void()> action)
```

Parameters:

- `action`: `Function<Void()>`

Returns: `Function<Void()>`

### `componentCallback`

```norm
Function<Void(T)> componentCallback<T>(Function<Void(T)> action)
```

Type parameters:

- `T`

Parameters:

- `action`: `Function<Void(T)>`

Returns: `Function<Void(T)>`

## `ui`

Source: `tasks.norm`

### `UiScheduler`

```norm
interface UiScheduler
```

#### `track`

```norm
Void track(Task<Unit> termination)
```

Parameters:

- `termination`: `Task<Unit>`

Returns: `Void`

#### `later`

```norm
Void later(Function<Void()> action)
```

Parameters:

- `action`: `Function<Void()>`

Returns: `Void`

#### `report`

```norm
Void report(Exception error)
```

Parameters:

- `error`: `Exception`

Returns: `Void`

### `UiTaskTracker`

```norm
class UiTaskTracker implements Resource
```

#### `UiTaskTracker`

```norm
UiTaskTracker(Function<Void(Function<Void()>)> dispatch)
```

Parameters:

- `dispatch`: `Function<Void(Function<Void()>)>`

#### `track`

```norm
Void track(Task<Unit> termination)
```

Parameters:

- `termination`: `Task<Unit>`

Returns: `Void`

#### `activeCount`

```norm
Integer activeCount()
```

Returns: `Integer`

#### `await`

```norm
Void await()
```

Returns: `Void`

#### `close`

```norm
Void close()
```

Returns: `Void`

## `ui`

Source: `theme.norm`

### `ThemedRenderNode`

```norm
interface ThemedRenderNode extends RenderNode
```

#### `theme`

```norm
Void theme(Theme? theme)
```

Parameters:

- `theme`: `Theme?`

Returns: `Void`

### `themeSource`

```norm
ThemeSource? themeSource()
```

Returns: `ThemeSource?`

### `ThemeProvider`

```norm
value ThemeProvider implements NativeWidget, NativeView
```

#### `child`

```norm
Widget child
```

Type: `Widget`

#### `source`

```norm
ThemeSource? source
```

Type: `ThemeSource?`

#### `kind`

```norm
String kind()
```

Returns: `String`

#### `nativeView`

```norm
View nativeView()
```

Returns: `View`

#### `children`

```norm
List<View> children(RenderNode node)
```

Parameters:

- `node`: `RenderNode`

Returns: `List<View>`

#### `create`

```norm
RenderNode create(RenderBackend backend, ViewScope scope)
```

Parameters:

- `backend`: `RenderBackend`
- `scope`: `ViewScope`

Returns: `RenderNode`

## `ui`

Source: `view.norm`

### `NodeKey`

```norm
enum NodeKey
```

#### `Named`

```norm
Named(String value)
```

Parameters:

- `value`: `String`

#### `Id`

```norm
Id(Integer value)
```

Parameters:

- `value`: `Integer`

#### `Item`

```norm
Item(ItemKey value)
```

Parameters:

- `value`: `ItemKey`

### `View`

```norm
value View implements Widget
```

#### `content`

```norm
ViewContent content
```

Type: `ViewContent`

#### `key`

```norm
NodeKey? key
```

Type: `NodeKey?`

#### `enabled`

```norm
Boolean enabled
```

Type: `Boolean`

#### `role`

```norm
WidgetRole role
```

Type: `WidgetRole`

#### `reference`

```norm
ViewReference? reference
```

Type: `ViewReference?`

#### `build`

```norm
Widget build()
```

Returns: `Widget`

### `ViewContent`

```norm
enum ViewContent
```

#### `Text`

```norm
Text(String text)
```

Parameters:

- `text`: `String`

#### `Button`

```norm
Button(String text, Function<Void()> action)
```

Parameters:

- `text`: `String`
- `action`: `Function<Void()>`

#### `Input`

```norm
Input(String placeholder, Binding<String>? text, Function<Void(String)> submit)
```

Parameters:

- `placeholder`: `String`
- `text`: `Binding<String>?`
- `submit`: `Function<Void(String)>`

#### `Multiline`

```norm
Multiline(String placeholder, Binding<String> text, Integer rows, Boolean editable)
```

Parameters:

- `placeholder`: `String`
- `text`: `Binding<String>`
- `rows`: `Integer`
- `editable`: `Boolean`

#### `Toggle`

```norm
Toggle(String text, Binding<Boolean> checked)
```

Parameters:

- `text`: `String`
- `checked`: `Binding<Boolean>`

#### `Component`

```norm
Component(String type, Function<View(ViewScope)> body)
```

Parameters:

- `type`: `String`
- `body`: `Function<View(ViewScope)>`

#### `Native`

```norm
Native(NativeView value)
```

Parameters:

- `value`: `NativeView`

#### `WidgetObject`

```norm
WidgetObject(Widget widget)
```

Parameters:

- `widget`: `Widget`

### `WidgetRole`

```norm
enum WidgetRole
```

#### `Default`

```norm
Default
```

#### `Title`

```norm
Title
```

#### `Muted`

```norm
Muted
```

#### `Primary`

```norm
Primary
```

#### `Destructive`

```norm
Destructive
```

#### `Card`

```norm
Card
```

## `ui`

Source: `widget.norm`

### `WidgetBuilder`

```norm
class WidgetBuilder implements ResultBuilder<Widget, List<Widget>>
```

#### `add`

```norm
Void add(Widget value)
```

Parameters:

- `value`: `Widget`

Returns: `Void`

#### `finish`

```norm
List<Widget> finish()
```

Returns: `List<Widget>`

### `Widget`

```norm
interface Widget
```

#### `init`

```norm
Void init()
```

Returns: `Void`

#### `build`

```norm
Widget build()
```

Returns: `Widget`

#### `dispose`

```norm
Void dispose()
```

Returns: `Void`

### `Keyed`

```norm
value Keyed implements NativeWidget
```

#### `key`

```norm
NodeKey key
```

Type: `NodeKey`

#### `child`

```norm
Widget child
```

Type: `Widget`

#### `nativeView`

```norm
View nativeView()
```

Returns: `View`

## `ui`

Source: `widgets.norm`

### `text`

```norm
View text(String text, NodeKey? key, WidgetRole role)
```

Parameters:

- `text`: `String`
- `key`: `NodeKey?`
- `role`: `WidgetRole`

Returns: `View`

### `button`

```norm
View button(String text, Function<Void()> action, NodeKey? key, WidgetRole role, Boolean enabled)
```

Parameters:

- `text`: `String`
- `action`: `Function<Void()>`
- `key`: `NodeKey?`
- `role`: `WidgetRole`
- `enabled`: `Boolean`

Returns: `View`

### `textField`

```norm
View textField(String placeholder, Binding<String> value, Function<Void()> submit, NodeKey? key, WidgetRole role)
```

Parameters:

- `placeholder`: `String`
- `value`: `Binding<String>`
- `submit`: `Function<Void()>`
- `key`: `NodeKey?`
- `role`: `WidgetRole`

Returns: `View`

### `toggle`

```norm
View toggle(String text, Binding<Boolean> value, NodeKey? key, WidgetRole role, Boolean enabled)
```

Parameters:

- `text`: `String`
- `value`: `Binding<Boolean>`
- `key`: `NodeKey?`
- `role`: `WidgetRole`
- `enabled`: `Boolean`

Returns: `View`

### `column`

```norm
View column(List<View> children, NodeKey? key, WidgetRole role, Boolean enabled)
```

Parameters:

- `children`: `List<View>`
- `key`: `NodeKey?`
- `role`: `WidgetRole`
- `enabled`: `Boolean`

Returns: `View`

### `row`

```norm
View row(List<View> children, NodeKey? key, WidgetRole role)
```

Parameters:

- `children`: `List<View>`
- `key`: `NodeKey?`
- `role`: `WidgetRole`

Returns: `View`

### `component`

```norm
View component(String type, Function<View(ViewScope)> body, NodeKey? key, WidgetRole role)
```

Parameters:

- `type`: `String`
- `body`: `Function<View(ViewScope)>`
- `key`: `NodeKey?`
- `role`: `WidgetRole`

Returns: `View`

### `scroll`

```norm
View scroll(View child, NodeKey? key)
```

Parameters:

- `child`: `View`
- `key`: `NodeKey?`

Returns: `View`

