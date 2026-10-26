# ui Skill

Use this skill to work with Norm module `ui` version 10. Use only declarations listed below.

## `ui`

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

#### `fontSize`

```norm
Double fontSize
```

#### `direction`

```norm
TextDirection direction
```

#### `motionEnabled`

```norm
Boolean motionEnabled
```

#### `UiConfiguration`

```norm
UiConfiguration(String fontFamily, Double fontSize, TextDirection direction, Boolean motionEnabled)
```

### `ConfiguredRenderNode`

```norm
interface ConfiguredRenderNode extends RenderNode
```

#### `configure`

```norm
Void configure(UiConfiguration configuration)
```

### `uiConfiguration`

```norm
UiConfiguration uiConfiguration()
```

### `UiProvider`

```norm
value UiProvider implements NativeWidget, NativeView
```

#### `child`

```norm
Widget child
```

#### `configuration`

```norm
UiConfiguration? configuration
```

#### `kind`

```norm
String kind()
```

#### `nativeView`

```norm
View nativeView()
```

#### `children`

```norm
List<View> children(RenderNode node)
```

#### `create`

```norm
RenderNode create(RenderBackend backend, ViewScope scope)
```

## `ui`

### `Text`

```norm
value Text implements NativeWidget
```

#### `text`

```norm
String text
```

#### `role`

```norm
WidgetRole role
```

#### `Text`

```norm
Text(String text)
```

#### `Text`

```norm
Text(String text, WidgetRole role)
```

#### `nativeView`

```norm
View nativeView()
```

### `TextArea`

```norm
value TextArea implements NativeWidget
```

#### `placeholder`

```norm
String placeholder
```

#### `value`

```norm
Binding<String> value
```

#### `rows`

```norm
Integer rows
```

#### `editable`

```norm
Boolean editable
```

#### `nativeView`

```norm
View nativeView()
```

## `ui`

### `ItemKey`

```norm
interface ItemKey
```

### `ValueKey`

```norm
value ValueKey<T> implements ItemKey
```

#### `value`

```norm
T value
```

### `ForEach`

```norm
value ForEach<T> implements WidgetCollection
```

#### `ForEach`

```norm
ForEach(List<T> items, Widget child(T task))
```

#### `ForEach`

```norm
ForEach(List<T> items, Function<ItemKey(T)> identity, Widget child(T task))
```

#### `widgets`

```norm
List<Widget> widgets()
```

## `ui`

### `TextFieldHandle`

```norm
value TextFieldHandle
```

#### `text`

```norm
String text()
```

#### `clear`

```norm
Void clear()
```

#### `focus`

```norm
Void focus()
```

### `Key`

```norm
class Key<T>
```

#### `current`

```norm
T? current()
```

#### `connect`

```norm
Resource connect(T handle)
```

### `ViewReference`

```norm
interface ViewReference
```

#### `connect`

```norm
Resource connect(RenderNode node)
```

### `TextFieldReference`

```norm
value TextFieldReference implements ViewReference
```

#### `key`

```norm
Key<TextFieldHandle> key
```

#### `connect`

```norm
Resource connect(RenderNode node)
```

### `TextFieldControl`

```norm
interface TextFieldControl
```

#### `readText`

```norm
String readText()
```

#### `clear`

```norm
Void clear()
```

#### `focus`

```norm
Void focus()
```

## `ui`

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

#### `right`

```norm
Double right
```

#### `bottom`

```norm
Double bottom
```

#### `left`

```norm
Double left
```

### `SizeConstraints`

```norm
value SizeConstraints
```

#### `width`

```norm
Dimension width
```

#### `height`

```norm
Dimension height
```

#### `minWidth`

```norm
Double minWidth
```

#### `minHeight`

```norm
Double minHeight
```

#### `maxWidth`

```norm
Double? maxWidth
```

#### `maxHeight`

```norm
Double? maxHeight
```

### `FlexSizing`

```norm
value FlexSizing
```

#### `grow`

```norm
Double grow
```

#### `shrink`

```norm
Double shrink
```

### `GridCell`

```norm
value GridCell
```

#### `span`

```norm
Integer span
```

### `GridBreakpoint`

```norm
value GridBreakpoint
```

#### `minimumWidth`

```norm
Double minimumWidth
```

#### `columns`

```norm
Integer columns
```

### `LayoutSpec`

```norm
enum LayoutSpec
```

#### `Flex`

```norm
Flex(Axis axis, Double gap, MainAlignment main, CrossAlignment cross, Boolean wrap, List<FlexSizing> items)
```

#### `Grid`

```norm
Grid(Integer columns, Double gap, List<GridCell> items, List<GridBreakpoint> breakpoints)
```

#### `Box`

```norm
Box(SizeConstraints size, Insets padding)
```

#### `Stack`

```norm
Stack(CrossAlignment horizontal, CrossAlignment vertical)
```

#### `Dock`

```norm
Dock(List<DockArea> areas)
```

#### `Scroll`

```norm
Scroll(Axis axis, Boolean fitWidth, Boolean fitHeight)
```

#### `Masonry`

```norm
Masonry(Double minimumColumnWidth, Double gap)
```

### `LayoutBackend`

```norm
interface LayoutBackend extends RenderBackend
```

#### `createLayout`

```norm
RenderNode createLayout(LayoutSpec specification)
```

### `LayoutView`

```norm
value LayoutView implements NativeView
```

#### `specification`

```norm
LayoutSpec specification
```

#### `content`

```norm
List<View> content
```

#### `kind`

```norm
String kind()
```

#### `children`

```norm
List<View> children(RenderNode node)
```

#### `create`

```norm
RenderNode create(RenderBackend backend, ViewScope scope)
```

## `ui`

### `FlexItem`

```norm
value FlexItem
```

#### `content`

```norm
Widget content
```

#### `grow`

```norm
Double grow
```

#### `shrink`

```norm
Double shrink
```

### `Flex`

```norm
value Flex implements NativeWidget
```

#### `items`

```norm
List<FlexItem> items
```

#### `axis`

```norm
Axis axis
```

#### `main`

```norm
MainAlignment main
```

#### `cross`

```norm
CrossAlignment cross
```

#### `wrap`

```norm
Boolean wrap
```

#### `gap`

```norm
Double gap
```

#### `key`

```norm
NodeKey? key
```

#### `nativeView`

```norm
View nativeView()
```

### `GridItem`

```norm
value GridItem
```

#### `content`

```norm
Widget content
```

#### `span`

```norm
Integer span
```

### `Grid`

```norm
value Grid implements NativeWidget
```

#### `items`

```norm
List<GridItem> items
```

#### `columns`

```norm
Integer columns
```

#### `breakpoints`

```norm
List<GridBreakpoint> breakpoints
```

#### `gap`

```norm
Double gap
```

#### `key`

```norm
NodeKey? key
```

#### `nativeView`

```norm
View nativeView()
```

### `Box`

```norm
value Box implements NativeWidget
```

#### `content`

```norm
Widget content
```

#### `size`

```norm
SizeConstraints size
```

#### `padding`

```norm
Insets padding
```

#### `key`

```norm
NodeKey? key
```

#### `nativeView`

```norm
View nativeView()
```

### `StackLayout`

```norm
value StackLayout implements NativeWidget
```

#### `children`

```norm
List<Widget> children
```

#### `horizontal`

```norm
CrossAlignment horizontal
```

#### `vertical`

```norm
CrossAlignment vertical
```

#### `key`

```norm
NodeKey? key
```

#### `nativeView`

```norm
View nativeView()
```

### `Dock`

```norm
value Dock implements NativeWidget
```

#### `top`

```norm
Widget? top
```

#### `bottom`

```norm
Widget? bottom
```

#### `left`

```norm
Widget? left
```

#### `right`

```norm
Widget? right
```

#### `center`

```norm
Widget? center
```

#### `key`

```norm
NodeKey? key
```

#### `nativeView`

```norm
View nativeView()
```

### `Scroll`

```norm
value Scroll implements NativeWidget
```

#### `child`

```norm
Widget child
```

#### `axis`

```norm
Axis axis
```

#### `fitWidth`

```norm
Boolean fitWidth
```

#### `fitHeight`

```norm
Boolean fitHeight
```

#### `key`

```norm
NodeKey? key
```

#### `nativeView`

```norm
View nativeView()
```

### `Masonry`

```norm
value Masonry implements NativeWidget
```

#### `children`

```norm
List<Widget> children
```

#### `minimumColumnWidth`

```norm
Double minimumColumnWidth
```

#### `gap`

```norm
Double gap
```

#### `key`

```norm
NodeKey? key
```

#### `nativeView`

```norm
View nativeView()
```

### `Row`

```norm
value Row implements NativeWidget
```

#### `children`

```norm
List<Widget> children
```

#### `gap`

```norm
Double gap
```

#### `main`

```norm
MainAlignment main
```

#### `cross`

```norm
CrossAlignment cross
```

#### `wrap`

```norm
Boolean wrap
```

#### `key`

```norm
NodeKey? key
```

#### `role`

```norm
WidgetRole role
```

#### `enabled`

```norm
Boolean enabled
```

#### `Row`

```norm
Row(Function<List<Widget>()> content, Double gap, MainAlignment main, CrossAlignment cross, Boolean wrap, NodeKey? key, WidgetRole role, Boolean enabled)
```

#### `Row`

```norm
Row(List<Widget> children, Double gap, MainAlignment main, CrossAlignment cross, Boolean wrap, NodeKey? key, WidgetRole role, Boolean enabled)
```

#### `nativeView`

```norm
View nativeView()
```

### `Column`

```norm
value Column implements NativeWidget
```

#### `children`

```norm
List<Widget> children
```

#### `gap`

```norm
Double gap
```

#### `main`

```norm
MainAlignment main
```

#### `cross`

```norm
CrossAlignment cross
```

#### `wrap`

```norm
Boolean wrap
```

#### `key`

```norm
NodeKey? key
```

#### `role`

```norm
WidgetRole role
```

#### `enabled`

```norm
Boolean enabled
```

#### `Column`

```norm
Column(Function<List<Widget>()> content, Double gap, MainAlignment main, CrossAlignment cross, Boolean wrap, NodeKey? key, WidgetRole role, Boolean enabled)
```

#### `Column`

```norm
Column(List<Widget> children, Double gap, MainAlignment main, CrossAlignment cross, Boolean wrap, NodeKey? key, WidgetRole role, Boolean enabled)
```

#### `nativeView`

```norm
View nativeView()
```

## `ui`

### `NativeWidget`

```norm
interface NativeWidget extends Widget
```

#### `nativeView`

```norm
View nativeView()
```

#### `build`

```norm
Widget build()
```

### `NativeView`

```norm
interface NativeView
```

#### `kind`

```norm
String kind()
```

#### `children`

```norm
List<View> children(RenderNode node)
```

#### `create`

```norm
RenderNode create(RenderBackend backend, ViewScope scope)
```

### `describe`

```norm
View describe(Widget widget)
```

### `describeChildren`

```norm
List<View> describeChildren(List<Widget> children)
```

## `ui`

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

#### `derive`

```norm
Resource derive(Function<Void()> action)
```

#### `track`

```norm
Void track(Dependency dependency)
```

#### `enqueue`

```norm
Void enqueue(Reaction reaction)
```

#### `evaluate`

```norm
Void evaluate(Reaction reaction)
```

#### `batch`

```norm
Void batch(Function<Void()> action)
```

#### `flush`

```norm
Void flush()
```

#### `settle`

```norm
Void settle()
```

#### `forget`

```norm
Void forget(Reaction reaction)
```

#### `close`

```norm
Void close()
```

### `State`

```norm
class State<T> extends TrackedDependency
```

#### `State`

```norm
State(ReactiveRuntime runtime, T initial)
```

#### `peek`

```norm
T peek()
```

#### `value`

```norm
T value()
```

#### `value`

```norm
Void value(T next)
```

#### `binding`

```norm
Binding<T> binding()
```

### `Binding`

```norm
value Binding<T>
```

#### `value`

```norm
T value()
```

#### `value`

```norm
Void value(T next)
```

### `binding`

```norm
Binding<T> binding<T>(FieldHandle<T> field)
```

### `Computed`

```norm
class Computed<T> implements Resource
```

#### `Computed`

```norm
Computed(ReactiveRuntime runtime, Function<T()> compute)
```

#### `value`

```norm
T value()
```

#### `close`

```norm
Void close()
```

## `ui`

### `RenderNode`

```norm
interface RenderNode extends Resource
```

#### `update`

```norm
Void update(View view)
```

#### `children`

```norm
Void children(List<RenderNode> children)
```

### `RenderBackend`

```norm
interface RenderBackend
```

#### `create`

```norm
RenderNode create(ViewContent content)
```

### `TextFieldRenderNode`

```norm
interface TextFieldRenderNode extends RenderNode
```

#### `textFieldHandle`

```norm
TextFieldHandle textFieldHandle()
```

### `Renderer`

```norm
class Renderer implements Resource
```

#### `Renderer`

```norm
Renderer(RenderBackend backend, UiScheduler? scheduler, Container? container)
```

#### `render`

```norm
Void render(Widget widget)
```

#### `node`

```norm
RenderNode node()
```

#### `close`

```norm
Void close()
```

## `ui`

### `ViewScope`

```norm
class ViewScope implements Resource, ResourceOwner, TaskExecutor, TaskScope
```

#### `ViewScope`

```norm
ViewScope(ReactiveRuntime runtime, UiScheduler? scheduler)
```

#### `observe`

```norm
Void observe(Widget widget)
```

#### `start`

```norm
Task<T> start<T>(Function<T()> work)
```

#### `dispatch`

```norm
Void dispatch(Function<Void()> action)
```

#### `state`

```norm
State<T> state<T>(NodeKey key, T initial)
```

#### `createState`

```norm
State<T> createState<T>(T initial)
```

#### `remember`

```norm
T remember<T>(NodeKey key, Function<T()> initialize)
```

#### `own`

```norm
Void own(Resource resource)
```

#### `release`

```norm
Void release(Resource resource)
```

#### `bind`

```norm
Function<Void()> bind(Function<Void()> action)
```

#### `within`

```norm
R within<R>(Function<R()> action)
```

#### `execute`

```norm
Void execute(Function<Void()> action)
```

#### `report`

```norm
Void report(Exception error)
```

#### `bind`

```norm
Function<Void(T)> bind<T>(Function<Void(T)> action)
```

#### `close`

```norm
Void close()
```

### `componentBinding`

```norm
Binding<T> componentBinding<T>(Binding<T> source)
```

### `componentCallback`

```norm
Function<Void()> componentCallback(Function<Void()> action)
```

### `componentCallback`

```norm
Function<Void(T)> componentCallback<T>(Function<Void(T)> action)
```

## `ui`

### `UiScheduler`

```norm
interface UiScheduler
```

#### `track`

```norm
Void track(Task<Unit> termination)
```

#### `later`

```norm
Void later(Function<Void()> action)
```

#### `report`

```norm
Void report(Exception error)
```

### `UiTaskTracker`

```norm
class UiTaskTracker implements Resource
```

#### `UiTaskTracker`

```norm
UiTaskTracker(Function<Void(Function<Void()>)> dispatch)
```

#### `track`

```norm
Void track(Task<Unit> termination)
```

#### `activeCount`

```norm
Integer activeCount()
```

#### `await`

```norm
Void await()
```

#### `close`

```norm
Void close()
```

## `ui`

### `ThemedRenderNode`

```norm
interface ThemedRenderNode extends RenderNode
```

#### `theme`

```norm
Void theme(Theme? theme)
```

### `themeSource`

```norm
ThemeSource? themeSource()
```

### `ThemeProvider`

```norm
value ThemeProvider implements NativeWidget, NativeView
```

#### `child`

```norm
Widget child
```

#### `source`

```norm
ThemeSource? source
```

#### `kind`

```norm
String kind()
```

#### `nativeView`

```norm
View nativeView()
```

#### `children`

```norm
List<View> children(RenderNode node)
```

#### `create`

```norm
RenderNode create(RenderBackend backend, ViewScope scope)
```

## `ui`

### `NodeKey`

```norm
enum NodeKey
```

#### `Named`

```norm
Named(String value)
```

#### `Id`

```norm
Id(Integer value)
```

#### `Item`

```norm
Item(ItemKey value)
```

### `View`

```norm
value View implements Widget
```

#### `content`

```norm
ViewContent content
```

#### `key`

```norm
NodeKey? key
```

#### `enabled`

```norm
Boolean enabled
```

#### `role`

```norm
WidgetRole role
```

#### `reference`

```norm
ViewReference? reference
```

#### `build`

```norm
Widget build()
```

### `ViewContent`

```norm
enum ViewContent
```

#### `Text`

```norm
Text(String text)
```

#### `Button`

```norm
Button(String text, Function<Void()> action)
```

#### `Input`

```norm
Input(String placeholder, Binding<String>? text, Function<Void(String)> submit)
```

#### `Multiline`

```norm
Multiline(String placeholder, Binding<String> text, Integer rows, Boolean editable)
```

#### `Toggle`

```norm
Toggle(String text, Binding<Boolean> checked)
```

#### `Component`

```norm
Component(String type, Function<View(ViewScope)> body)
```

#### `Native`

```norm
Native(NativeView value)
```

#### `WidgetObject`

```norm
WidgetObject(Widget widget)
```

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

### `WidgetBuilder`

```norm
class WidgetBuilder implements ResultBuilder<Widget, List<Widget>>
```

#### `add`

```norm
Void add(Widget value)
```

#### `finish`

```norm
List<Widget> finish()
```

### `Widget`

```norm
interface Widget
```

#### `init`

```norm
Void init()
```

#### `build`

```norm
Widget build()
```

#### `dispose`

```norm
Void dispose()
```

### `Keyed`

```norm
value Keyed implements NativeWidget
```

#### `key`

```norm
NodeKey key
```

#### `child`

```norm
Widget child
```

#### `nativeView`

```norm
View nativeView()
```

## `ui`

### `text`

```norm
View text(String text, NodeKey? key, WidgetRole role)
```

### `button`

```norm
View button(String text, Function<Void()> action, NodeKey? key, WidgetRole role, Boolean enabled)
```

### `textField`

```norm
View textField(String placeholder, Binding<String> value, Function<Void()> submit, NodeKey? key, WidgetRole role)
```

### `toggle`

```norm
View toggle(String text, Binding<Boolean> value, NodeKey? key, WidgetRole role, Boolean enabled)
```

### `column`

```norm
View column(List<View> children, NodeKey? key, WidgetRole role, Boolean enabled)
```

### `row`

```norm
View row(List<View> children, NodeKey? key, WidgetRole role)
```

### `component`

```norm
View component(String type, Function<View(ViewScope)> body, NodeKey? key, WidgetRole role)
```

### `scroll`

```norm
View scroll(View child, NodeKey? key)
```

