import 'package:flutter/cupertino.dart';

import '../models/network_helper_result.dart';

class NetworkActionHelper {
  static void setErrorStatusCode({
    required NetworkHelperResult result,
    required Object error,
  }) {
    result.setSuccess(false);
    result.setMessage('Something went wrong');
    result.setStatusCode(500);
  }

  static Future<bool> checkResponseAndPerformAction({
    required NetworkHelperResult result,
    required BuildContext context,
  }) async {
    return false;
  }
}
