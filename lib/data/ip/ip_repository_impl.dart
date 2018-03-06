import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter_mvp/data/ip/ip_repository.dart';
import 'package:http/http.dart' as http;

class IPRepositoryImpl implements IPRepository {
  static const _IPApiUrl = "https://httpbin.org/ip";

  final JsonDecoder _decoder = new JsonDecoder();

  @override
  Future<String> getIp() {
    return http.get(_IPApiUrl).then((http.Response response) {
      if (response.statusCode == HttpStatus.OK) {
        final String jsonBody = response.body;
        final ipJson = _decoder.convert(jsonBody);
        return ipJson['origin'];
      }
    });
  }
}
