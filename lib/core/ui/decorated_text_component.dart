import 'package:flutter/material.dart';

class DecoratedTextComponent extends StatelessWidget {
  final String text;
  const DecoratedTextComponent({Key? key, this.text = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.5),
      ),
      child: Text(text),
    );
  }
}