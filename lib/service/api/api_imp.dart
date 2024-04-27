import 'package:dio/dio.dart';
import 'package:mvvm_app_learn/model/crypto.dart';
import 'package:mvvm_app_learn/service/api/network_api.dart';

class WebApi implements NetworkRequest {
  @override
  Future<List<Crypto>> getCryptoList() async {
    var response = await Dio().get('https://api.coincap.io/v2/assets');

    List<Crypto> cryptoList = response.data['data']
        .map<Crypto>((jsonMapObject) => Crypto.fromMapJson(jsonMapObject))
        .toList();

    return cryptoList;
  }
}
