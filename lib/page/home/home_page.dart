import 'package:flutter/material.dart';
import 'package:provider_demo/page/home/widget/clip_painter.dart';
import 'package:provider_demo/page/home/widget/counter_action.dart';
import 'package:provider_demo/page/home/widget/counter_info.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Evan JUGE'),
        ),
        body: SafeArea(
          child: Stack(children: [
            ClipPath(
              clipper: ClipPainter(),
              child: Container(
                color: Colors.teal,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CounterInfo(),
                  Container(height: 50),
                  CounterAction()
                ],
              ),
            ])
          ]),
        ));
  }
}
