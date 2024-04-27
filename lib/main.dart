import 'package:flutter/material.dart';
import 'package:mvvm_app_learn/view/coin_list_screen_view.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CoinList_view(),
      ),
    );
  }
}
