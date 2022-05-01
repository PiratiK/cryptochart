import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../domain/model/history_model.dart';
import '../../../../domain/store/coin/coin_store.dart';
import 'home_chart_data.dart';

class HomeChart extends StatelessWidget {
  const HomeChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CoinStore coinStore = context.watch<CoinStore>();
    return FutureBuilder<List<History>>(
      future: coinStore.getHistory(),
      builder: (_, snapshot) {
        if (snapshot.hasData) {
          return HomeChartData(
            history: snapshot.data!,
          ).wFull(context).h(context.percentWidth * 50.0);
        }
        return VxBox(
                child: const CircularProgressIndicator()
                    .w(50.0)
                    .h(50.0)
                    .centered())
            .width(context.screenWidth)
            .height(context.percentWidth * 50.0)
            .makeCentered();
      },
    );
  }
}
