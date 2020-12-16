import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/page/home/home_page.dart';

import 'model/counter_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ChangeNotifierProvider(
          create: (_) => Counter(),
          child: HomePage(),
        ));
  }
}
