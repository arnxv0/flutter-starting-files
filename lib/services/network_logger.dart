import 'dart:developer';

import 'package:http/http.dart';

class NetworkLogger {
  static void logRequest({
    required Uri url,
    required RequestType type,
    Map body = const {},
    Map headers = const {},
  }) {
    log('$type $url Body: $body Headers: $headers');
  }

  static void logResponse({
    required Response response,
    required Uri url,
    required RequestType type,
  }) {
    log(
      '$type $url Response: ${response.body} ${response.statusCode} ${response.headers}',
    );
  }
}

enum RequestType {
  get,
  post,
  put,
  delete,
}
