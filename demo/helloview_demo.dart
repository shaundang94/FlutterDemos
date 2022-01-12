import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('hello2',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)));
  }
}
