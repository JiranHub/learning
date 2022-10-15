## Dart API

## [dart 关键字](https://dart.cn/guides/language/language-tour#keywords)



## extension

扩展字段，类似于kotlin 方法扩展

## typedef

类型别名

## [Isolate](https://dart.cn/guides/language/concurrency#how-isolates-work)

Flutter 不支持 `Isolate.spawnUri()`，但支持 Isolate.spawn()

```dart
/// https://api.dart.cn/stable/2.18.2/dart-isolate/Isolate/spawn.html
external static Future<Isolate> spawn<T>(
    void entryPoint(T message), T message,
    {bool paused = false,
    bool errorsAreFatal = true,
    SendPort? onExit,
    SendPort? onError,
    @Since("2.3") String? debugName});
```


