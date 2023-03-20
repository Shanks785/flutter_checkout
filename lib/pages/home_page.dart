import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final days = 10;
  final name = "World";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Basics'),
      ),
      body: Center(
        child: Text('$days Hello $name'),
      ),
      drawer: Drawer(),
    );
  }
}
