import 'package:flutter/material.dart';

import '../presentation/pages/home_page.dart';
import 'providers/app_provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Crypto Chart',
        routes: {
          '/': (context) => const HomePage(),
        },
      ),
    );
  }
}
