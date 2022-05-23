import 'package:dio/dio.dart';
import 'package:payment/shared/component/constants.dart';

class DioHelper {
  static late Dio dio;
//initial state
  static init() {
    BaseOptions options = BaseOptions(
      baseUrl: baseurl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
    );
    dio = Dio(options);
  }

//getdata from api
  static Future<Response?> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    dio.options.headers = {
      "Content-Type": "application/json",
    };
    try {
      Response response = await dio.get(
        url,
        queryParameters: query,
      );
      return response;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //post data to api
  static Future<Response?> postData({
    required String url,
    required Map<String, dynamic>? data,
    Map<String, dynamic>? query,
  }) async {
    dio.options.headers = {
      "Content-Type": "application/json",
    };
    try {
      Response response = await dio.post(
        url,
        data: data,
        queryParameters: query,
      );
      return response;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
