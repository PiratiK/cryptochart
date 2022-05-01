import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../domain/model/socket_model.dart';
import '../../../../domain/store/coin/coin_store.dart';
import '../../../utils/utils.dart';

class HomeStream extends StatelessWidget {
  const HomeStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CoinStore coinStore = context.watch<CoinStore>();

    return StreamBuilder<SocketItem>(
      stream: coinStore.stream.map(
        (event) => SocketItem.fromJson(
          json.decode(event),
        ),
      ),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return VxBox(
            child: 'Subscrine to chanel'.text.makeCentered(),
          )
              .width(context.screenWidth)
              .height(70.0)
              .border()
              .roundedSM
              .makeCentered();
        }
        return VxBox(
          child: HStack(
            [
              VStack([
                'symbol:'.text.capitalize.makeCentered(),
                'btc/usd'.text.uppercase.size(12.0).makeCentered(),
              ]).wOneForth(context),
              VStack([
                'price:'.text.capitalize.makeCentered(),
                '\$${snapshot.data!.price.separate()}'
                    .text
                    .uppercase
                    .size(12.0)
                    .makeCentered(),
              ]).wOneForth(context),
              VStack([
                'time:'.text.capitalize.makeCentered(),
                Jiffy(snapshot.data!.time.subtract(const Duration(hours: -3)))
                    .format('MMM d, h:mm a')
                    .text
                    .uppercase
                    .size(12.0)
                    .makeCentered(),
              ]).wOneThird(context)
            ],
            alignment: MainAxisAlignment.spaceEvenly,
            axisSize: MainAxisSize.max,
          ),
        )
            .width(context.screenWidth)
            .height(70.0)
            .border()
            .roundedSM
            .makeCentered();
      },
    );
  }
}
