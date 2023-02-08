import 'package:dio/dio.dart';

class ApiCalls {
  static Future<Response> getApi(String url) async {
    Dio dio = Dio();
    Response response = await dio.get(url);
    return response;
  }
}
