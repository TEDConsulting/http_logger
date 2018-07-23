# http_logger

A logging middleware for Dart's http module.

### Usage

`http_logger` uses the [`http_middleware`](https://pub.dartlang.org/packages/http_middleware#-readme-tab-) package to 
implement logging. 

Add the [`http_middleware`](https://pub.dartlang.org/packages/http_middleware#-readme-tab-) and `http_logger` in your project.

```dart
http_middleware: any
http_logger: any
```

The setup is simple. You need to create an object of `HttpWithMiddleware` or `HttpClientWithMiddleware` and add the `HttpLogger` middleware in it.
```dart
HttpWithMiddleware httpClient = HttpWithMiddleware.build(middlewares: [
  HttpLogger(logLevel: LogLevel.BODY),
]);

var response = await httpClient.post(
  'https://jsonplaceholder.typicode.com/posts/',
  body: jsonEncode({"test1": "THis is a test"}),
  headers: {"Content-Type": "application/json"});
```

There are different log levels that you can use.

```dart
LogLevel.BODY
LogLevel.HEADER
LogLevel.BASIC
LogLevel.NONE
```
