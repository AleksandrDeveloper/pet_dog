import 'package:dio/dio.dart';
const baseUrl = 'https://jsonplaceholder.typicode.com';
class Client{
  final dio = Dio()
  ..options.baseUrl = baseUrl
  ..options.connectTimeout = const Duration(seconds: 5)
  ..options.receiveTimeout = const Duration(seconds: 3);

}