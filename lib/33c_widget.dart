import 'package:flutter/material.dart';

class Widget33B extends StatelessWidget {
  const Widget33B({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(
            5,
            (index) => ListTile(
              key: Key("listTile"),
                  title: Text("Item $index"),
                )),
      ),
    );
  }
}
