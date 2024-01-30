import 'package:flutter/material.dart';

class WidgetCheckScreen extends StatelessWidget {
  const WidgetCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: List.generate(5,
                (index) => ListTile(
                  key: Key('listTile'),
                    title: Text("Item $index"))),
      ),
    );
  }
}
