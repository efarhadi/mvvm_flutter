import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mvvm_app_learn/view_model/coinList.dart';
import 'package:provider/provider.dart';

class CoinList_view extends StatefulWidget {
  const CoinList_view({Key? key}) : super(key: key);

  @override
  State<CoinList_view> createState() => _CoinList_viewState();
}

class _CoinList_viewState extends State<CoinList_view> {
  final _viewModel = coinListViewModeol();

  @override
  void initState() {
    super.initState();
    _viewModel.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _viewModel,
      child: Consumer<coinListViewModeol>(
        builder: ((context, viewmodel, child) {
          return GetUi(viewmodel);
        }),
      ),
    );
  }

  Widget GetUi(coinListViewModeol viewModel) {
    return ListView.builder(
      itemCount: viewModel.cryptolist.length ?? 0,
      itemBuilder: (context, index) {
        return Text(viewModel.cryptolist[index].symbol ?? '');
      },
    );
  }
}
