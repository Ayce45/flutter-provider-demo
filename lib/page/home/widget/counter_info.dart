import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/model/counter_model.dart';

class CounterInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<Counter>(builder: (BuildContext context, model, Widget child) {
          return Text(
            "Counter value : " + model.value.toString(),
            style: TextStyle(fontSize: 40),
          );
        }),
      ],
    );
  }
}
