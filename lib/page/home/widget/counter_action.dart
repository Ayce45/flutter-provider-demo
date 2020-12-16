import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/model/counter_model.dart';

class CounterAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FlatButton(
          onPressed: () {
            Provider.of<Counter>(context, listen: false).increment();
          },
          child: Text(
            '+',
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          color: Colors.teal,
        ),
        Container(width: 12),
        FlatButton(
            onPressed: () {
              Provider.of<Counter>(context, listen: false).decrement();
            },
            child:
                Text('-', style: TextStyle(color: Colors.white, fontSize: 40)),
            color: Colors.teal)
      ],
    );
  }
}
