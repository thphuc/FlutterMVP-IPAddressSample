import 'dart:async';

abstract class IPRepository {
  Future<String> getIp();
}