import 'package:flutter/material.dart';

class MakeRsText extends StatefulWidget {
  const MakeRsText({
    super.key,
    required this.price,
  });

  final String price;

  @override
  State<MakeRsText> createState() => _MakeRsTextState();
}

class _MakeRsTextState extends State<MakeRsText> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Text("Rs. "+widget.price));
  }
}