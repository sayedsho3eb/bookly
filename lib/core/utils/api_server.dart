import 'package:dio/dio.dart';

class ApiServer {
  final Dio _dio;

  ApiServer(this._dio);
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
