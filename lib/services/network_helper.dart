import 'package:http/http.dart' as http;

import '../utilities/constants.dart';

class NetworkHelper {
  NetworkHelper();

  static String host =
      isProdApp ? 'http://localhost:5858' : 'http://localhost:5858';
  static String endpoint = '$host/api/v1';

// static Future<NetworkHelperResult> getConfig() async {
//   NetworkHelperResult result = NetworkHelperResult();
//
//   Uri url = Uri.parse('$endpoint/appConfig');
//   NetworkLogger.logRequest(url: url, type: RequestType.get);
//
//   try {
//     var response = await http.get(url);
//
//     result.setStatusCode(response.statusCode);
//     NetworkLogger.logResponse(
//       response: response,
//       url: url,
//       type: RequestType.get,
//     );
//
//     Map<String, dynamic> responseObject = json.decode(response.body);
//
//     if (responseObject['success'] == true) {
//       result.setSuccess(true);
//       result.setMessage('User updated');
//       result.setData(AppConfig.fromNetwork(responseObject['result']));
//     } else {
//       result.setSuccess(false);
//       result.setMessage(responseObject['error'] ?? responseObject['message']);
//     }
//   } catch (e) {
//     log('get $url Error: $e');
//     NetworkActionHelper.setErrorStatusCode(
//       result: result,
//       error: e,
//     );
//   }
//
//   return result;
// }

// static Future<NetworkHelperResult> getUpdatedUser({
//   required User user,
// }) async {
//   NetworkHelperResult result = NetworkHelperResult();
//
//   Uri url = Uri.parse('$endpoint/');
//   NetworkLogger.logRequest(url: url, type: RequestType.get);
//
//   try {
//     var response = await http.get(
//       url,
//       headers: user.headers.cast<String, String>(),
//     );
//
//     result.setStatusCode(response.statusCode);
//     NetworkLogger.logResponse(
//       response: response,
//       url: url,
//       type: RequestType.get,
//     );
//
//     Map<String, dynamic> responseObject = json.decode(response.body);
//
//     if (responseObject['success'] == true) {
//       result.setSuccess(true);
//       result.setMessage('User updated');
//       result.setData(
//         User.fromNetwork(responseObject['result'])
//             .updateHeaders(response.headers),
//       );
//     } else {
//       result.setSuccess(false);
//       result.setMessage(responseObject['error'] ?? responseObject['message']);
//     }
//   } catch (e) {
//     log('get $url Error: $e');
//     NetworkActionHelper.setErrorStatusCode(
//       result: result,
//       error: e,
//     );
//   }
//
//   return result;
// }

// static Future<NetworkHelperResult> sendLoginOTP({
//   required String countryCode,
//   required String phone,
// }) async {
//   NetworkHelperResult result = NetworkHelperResult();
//
//   Map body = {
//     'countryCode': countryCode,
//     'phone': phone,
//   };
//
//   Uri url = Uri.parse('$endpoint/login/phone');
//   NetworkLogger.logRequest(
//     url: url,
//     type: RequestType.post,
//     body: body,
//   );
//
//   try {
//     var response = await http.post(
//       url,
//       body: json.encode(body),
//       headers: {
//         'Content-Type': 'application/json',
//       },
//     );
//
//     result.setStatusCode(response.statusCode);
//     NetworkLogger.logResponse(
//       response: response,
//       url: url,
//       type: RequestType.post,
//     );
//
//     Map<String, dynamic> responseObject = json.decode(response.body);
//
//     if (responseObject['success'] == true) {
//       result.setSuccess(true);
//       result.setMessage('OTP sent');
//     } else {
//       result.setSuccess(false);
//       result.setMessage(responseObject['error'] ?? responseObject['message']);
//     }
//   } catch (e) {
//     log('post $url Error: $e');
//     NetworkActionHelper.setErrorStatusCode(
//       result: result,
//       error: e,
//     );
//   }
//
//   return result;
// }
}
