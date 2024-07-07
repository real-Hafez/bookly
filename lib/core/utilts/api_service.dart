import 'package:dio/dio.dart';

class ApiService {
  final base_url = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiService(this.dio);
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var responce = await dio.get('$base_url$endpoint');
    return responce.data;
  }
}
