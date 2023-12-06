import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://api.escuelajs.co/api/v1/';
  final Dio dio;
  ApiService(this.dio);

  Future<List<Map<String, dynamic>>> get({required String endpoint}) async {
    var response = await dio.get('$_baseUrl$endpoint');
    return response.data;
  }
}
