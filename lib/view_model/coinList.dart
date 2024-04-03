import 'package:flutter/cupertino.dart';
import 'package:mvvm_app_learn/model/crypto.dart';
import 'package:mvvm_app_learn/service/api/api_imp.dart';

class coinListViewModeol extends ChangeNotifier {
  final _webApi = WebApi();

  List<Crypto> cryptolist = [];

  void loadData() async {
    cryptolist = await _webApi.getCryptoList();
    notifyListeners();
  }
}
