import 'package:dio/dio.dart';

class NetUtil {
  static Future<dynamic> request({required String url}) async {
    var response = await Dio().get(url);
    return response;
  }
}
