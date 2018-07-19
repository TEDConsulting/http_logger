import 'package:http_logger/logger.dart';
import 'package:http_middleware/http_middleware.dart';
import 'package:http_logger/log_level.dart';

class HttpLogger implements MiddlewareContract {
  LogLevel logLevel;
  Logger logger;

  HttpLogger({
    this.logLevel: LogLevel.BODY,
  }) {
    logger = Logger(logLevel: logLevel);
  }

  @override
  void interceptRequest({RequestData data}) {
    logger.logRequest(data: data);
  }

  @override
  void interceptResponse({ResponseData data}) {
    logger.logResponse(data: data);
  }
}
