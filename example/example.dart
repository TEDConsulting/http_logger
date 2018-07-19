import 'dart:convert';

import '../lib/http_logger.dart';
import 'package:http_middleware/http_middleware.dart';

main() async {
  HttpWithMiddleware httpClient = HttpWithMiddleware.build(middlewares: [
    HttpLogger(logLevel: LogLevel.BODY),
    HttpLogger(logLevel: LogLevel.BASIC),
  ]);

  var response = await httpClient.post(
      'https://jsonplaceholder.typicode.com/posts/',
      body: jsonEncode({"test1": "THis is a test"}),
      headers: {"Content-Type": "application/json"});
  print(response);
}
