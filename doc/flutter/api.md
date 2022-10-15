## FLutter APIs

## #ScrollBehavior

ScrollBehavior 自己在 flutter 的设计中是一个平台相关的 Widget，它会根据当前的平台，选择一个合适的 ScrollPhysics，以下：app

```dart
ScrollPhysics getScrollPhysics(BuildContext context) {
 switch (getPlatform(context)) {
 case TargetPlatform.iOS:
 case TargetPlatform.macOS:
 return _bouncingPhysics;
 case TargetPlatform.android:
 case TargetPlatform.fuchsia:
 case TargetPlatform.linux:
 case TargetPlatform.windows:
 return _clampingPhysics;
 }
}
```

而 ScrollPhysics 的定位，能够从名字上理解，控制滑动过程的物理特性，定义了如当滑动到顶部的时候的表现、滑过头了以后的回弹方式等。l

---

相关学习链接：

- [Flutter完整开发实战详解(十八、 神奇的ScrollPhysics与Simulation) - 腾讯云开发者社区-腾讯云](https://cloud.tencent.com/developer/article/1516957)

- [ScrollPhysics class - widgets library - Dart API](https://api.flutter.dev/flutter/widgets/ScrollPhysics-class.html)

## Row

列

## Column

行

## [Semantics]([Semantics class - widgets library - Dart API](https://api.flutter.dev/flutter/widgets/Semantics-class.html))

注释信息，为浏览器等引擎提供语义分析，类似于h5中的img-alt，但能力应该比alt多很多

```dart
// example
Semantics(
   sortKey: const OrdinalSortKey(0),
   child: Text(
       'WeChat Asset Picker',
       style: Theme.of(context).textTheme.headline6,
   ),
),
```

## [ AnnotatedRegion]([AnnotatedRegion class - widgets library - Dart API](https://api.flutter.dev/flutter/widgets/AnnotatedRegion-class.html))

```dart
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: AnnotatedRegion(  //使用AnnotatedRegion修改状态栏字体颜色，但是这样写导航栏也变黑了。
      value: SystemUiOverlayStyle.dark,
      child: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Header(),
            Cells(context),
            Cells(context),
            ...
          ],
        ),
      ),
    ),
  );

```



## [Scaffold]([Scaffold class - material library - Dart API](https://api.flutter.dev/flutter/material/Scaffold-class.html))

通栏相关容器，相关介绍：https://www.jianshu.com/p/a0fcb755a7b8

```dart
return Container(
    child: Scaffold(
        appBar: _appBar(),
        body: _body(),
        floatingActionButton: _floatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        persistentFooterButtons: _persistentFooterButtons(),
    ),
);
```

Scaffold 提供了比较常见的页面属性。

| Scaffold属性                     | 介绍                                                          |
| ------------------------------ | ----------------------------------------------------------- |
| appBar                         | 页面上方导航条                                                     |
| body                           | 页面容器                                                        |
| floatingActionButton           | 悬浮按钮                                                        |
| floatingActionButtonLocation   | 悬浮按钮位置                                                      |
| floatingActionButtonAnimator   | 悬浮按钮动画                                                      |
| persistentFooterButtons        | 显示在底部导航条上方的一组按钮                                             |
| drawer                         | 左侧菜单                                                        |
| endDrawer                      | 右侧菜单                                                        |
| bottomNavigationBar            | 底部导航条                                                       |
| bottomSheet                    | 一个持久停留在body下方，底部控件上方的控件                                     |
| backgroundColor                | 背景色                                                         |
| resizeToAvoidBottomPadding     | 已废弃，resizeToAvoidBottomInset作为替代                            |
| resizeToAvoidBottomInset       | 默认为 true，防止一些小组件重复                                          |
| primary                        | 是否在屏幕顶部显示Appbar, 默认为 true，Appbar 是否向上延伸到状态栏，如电池电量，时间那一栏     |
| drawerDragStartBehavior        | 控制 drawer 的一些特性                                             |
| extendBody                     | body 是否延伸到底部控件                                              |
| extendBodyBehindAppBar         | 默认 false，为 true 时，body 会置顶到 appbar 后，如appbar 为半透明色，可以有毛玻璃效果 |
| drawerScrimColor               | 侧滑栏拉出来时，用来遮盖主页面的颜色                                          |
| drawerEdgeDragWidth            | 侧滑栏拉出来的宽度                                                   |
| drawerEnableOpenDragGesture    | 左侧侧滑栏是否可以滑动                                                 |
| endDrawerEnableOpenDragGesture | 右侧侧滑栏是否可以滑动                                                 |


