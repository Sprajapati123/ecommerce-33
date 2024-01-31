import 'package:flutter/material.dart';

class Widget33C extends StatelessWidget {
  const Widget33C({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(
            5,
            (index) => ListTile(
              key: Key('listTile'),
                  title: Text("Item $index"),
                )),
      ),
    );
  }
}
