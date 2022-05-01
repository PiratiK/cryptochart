import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/store/coin/coin_store.dart';
import '../dependencies/modules/coin_module.dart';

class AppProvider extends StatelessWidget {
  final Widget child;
  const AppProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <Provider>[
        Provider<CoinStore>(
          create: (context) => CoinModule.coinStore(),
        ),
      ],
      child: child,
    );
  }
}
