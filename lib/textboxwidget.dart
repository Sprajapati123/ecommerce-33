import 'package:flutter/material.dart';

class TextBoxWidget extends StatefulWidget {
  const TextBoxWidget({Key? key}) : super(key: key);

  @override
  State<TextBoxWidget> createState() => _TextBoxWidgetState();
}

class _TextBoxWidgetState extends State<TextBoxWidget> {
  String text="";
  TextEditingController inputController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: inputController,
        ),
        Text("Output: $text"),
        ElevatedButton(onPressed: (){
          setState(() {
            text = inputController.text.toString();
          });
        }, child: Text("Save"))
      ],
    );
  }
}