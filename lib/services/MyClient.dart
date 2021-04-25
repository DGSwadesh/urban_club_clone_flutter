import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class MyClient extends http.BaseClient {
  final Map<String, String> defaultHeaders;
  http.Client _httpClient = new http.Client();

  MyClient({this.defaultHeaders = const {}});

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers.addAll(defaultHeaders);
    return _httpClient.send(request);
  }

  @override
  Future<Response> get(url, {Map<String, String>? headers}) async {
    headers?.addAll(defaultHeaders);
    return _httpClient
        .get(url, headers: headers)
        .timeout(const Duration(seconds: 3000));
  }

  @override
  Future<Response> post(url,
      {Map<String, String>? headers, body, Encoding? encoding}) async {
    try {
      headers?.addAll(defaultHeaders);
      return _httpClient
          .post(url, headers: headers, body: body, encoding: encoding)
          .timeout(const Duration(seconds: 60));
    } finally {
      _httpClient.close();
    }
  }

  @override
  Future<Response> postCartData(url,
      {Map<String, String>? headers, body, Encoding? encoding}) async {
    try {
      headers?.addAll(defaultHeaders);
      return _httpClient
          .post(url, headers: headers, body: body, encoding: encoding)
          .timeout(const Duration(seconds: 60));
    } finally {
      _httpClient.close();
    }
  }

  @override
  Future<Response> patch(url,
      {Map<String, String>? headers, body, Encoding? encoding}) {
    headers?.addAll(defaultHeaders);
    return _httpClient.patch(url, headers: headers, encoding: encoding);
  }

  @override
  Future<Response> put(url,
      {Map<String, String>? headers, body, Encoding? encoding}) {
    headers?.addAll(defaultHeaders);
    return _httpClient.put(url,
        headers: headers, body: body, encoding: encoding);
  }

  @override
  Future<Response> head(url, {Map<String, String>? headers}) async {
    headers?.addAll(defaultHeaders);
    return _httpClient.head(url, headers: headers);
  }

  @override
  Future<http.Response> delete(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    headers?.addAll(defaultHeaders);
    return _httpClient.delete(url, headers: headers);
  }
}
