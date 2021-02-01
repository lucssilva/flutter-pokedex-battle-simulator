// https://github.com/Flutterando/semana-do-flutter-arc/blob/aula7/lib/app/services/client_http_service.dart
import 'package:dio/dio.dart';

class HTTPClientService implements IHTTPClient {
  final Dio client = Dio();
  final String baseUrl;
  HTTPClientService({this.baseUrl}) {
    client.options.baseUrl = baseUrl;
  }

  @override
  get(String url) async {
    final response = await client.get(url);
    return response.data;
  }

  @override
  post(String url, {Map<String, dynamic> data}) async {
    final response = await client.post(url, data: data);
    return response.data;
  }
}

abstract class IHTTPClient {
  Future get(String url);
  Future post(String url);
}
