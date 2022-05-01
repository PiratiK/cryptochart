import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../domain/store/coin/coin_store.dart';
import 'components/home_chart.dart';
import 'components/home_stream.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CoinStore coinStore = context.watch<CoinStore>();

    return SafeArea(
      top: true,
      bottom: true,
      child: VxBox(
        child: VStack([
          HStack(
            [
              VxBox(
                child: 'btc/usd'.text.uppercase.make(),
              )
                  .width(context.percentWidth * 60.0)
                  .height(50.0)
                  .alignBottomLeft
                  .p16
                  .border()
                  .make(),
              GestureDetector(
                onTap: () async {
                  if (!coinStore.socketRunned) {
                    await coinStore.runSocket();
                  } else {
                    await coinStore.stopSocket();
                  }
                },
                child: Observer(
                  builder: (_) => VxBox(
                    child: (coinStore.socketRunned ? 'stop' : 'subscribe')
                        .text
                        .capitalize
                        .make(),
                  )
                      .width(context.percentWidth * 25.0)
                      .height(40.0)
                      .alignCenter
                      .rounded
                      .border()
                      .make(),
                ),
              ),
            ],
            alignment: MainAxisAlignment.spaceBetween,
            axisSize: MainAxisSize.max,
          ),
          'market data:'.text.capitalize.make().py16(),
          Observer(
            builder: (_) {
              if (!coinStore.socketRunned) {
                return VxBox(
                  child: 'Subscrine to chanel'.text.makeCentered(),
                )
                    .width(context.screenWidth)
                    .height(70.0)
                    .border()
                    .roundedSM
                    .makeCentered();
              }
              return const HomeStream();
            },
          ),
          'charting data:'.text.capitalize.make().py16(),
          const HomeChart(),
        ]).p16(),
      ).width(context.screenWidth).height(context.screenHeight).makeCentered(),
    );
  }
}
