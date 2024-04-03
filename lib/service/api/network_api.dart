import 'package:mvvm_app_learn/model/crypto.dart';

abstract class NetworkRequest {
  Future<List<Crypto>> getCryptoList();
}
