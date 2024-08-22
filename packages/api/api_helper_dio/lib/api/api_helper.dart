import 'package:dio/dio.dart';


final dio = Dio();

class ApiHelper {
  static Future<dynamic> get(String url, Map<String, String> header) async {
    final response = await dio.get(
      url,
      options: Options(
        headers: header,
      ),
    );

    return response;
  }

  static Future<dynamic> post({
    required String url,
    required Map<String, String>? header,
    required Object? body,
  }) async =>
      dio.post(
        url,
        data: body,
        options: Options(
          headers: header,
        ),
      );

  static Future<dynamic> put({
    required String url,
    required Map<String, String>? header,
    required Object? body,
  }) async {
    final response = await dio.put(
      url,
      data: body,
        options: Options(
          headers: header,
        ),
    );
    return response;
  }

  static Future<dynamic> patch({
    required String url,
    required Map<String, String>? header,
    required Object? body,
  }) async {
    final response = await dio.patch(
      url,
      data: body,
        options: Options(
          headers: header,
        ),
    );
    return response;
  }

  static Future<dynamic> delete({
    required String url,
    required Map<String, String>? header,
    required Object? body,
  }) async {
    final response = await dio.delete(
      url,
      data: body,
        options: Options(
          headers: header,
        ),
    );
    return response;
  }
}