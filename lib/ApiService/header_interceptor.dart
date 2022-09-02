import 'dart:async';
import 'package:chopper/chopper.dart';

// 1
class HeaderInterceptor implements RequestInterceptor {
  // 2
  static const String AUTH_HEADER = "apiKey";
  static const String V4_AUTH_HEADER = "1561f1f454c34e6596cd7995ec1b83ea";

  @override
  FutureOr<Request> onRequest(Request request) async {
    // 5
    Request newRequest = request
        .copyWith(parameters: {"q": "keyword", AUTH_HEADER: V4_AUTH_HEADER});
    return newRequest;
  }
}
