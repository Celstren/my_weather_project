import 'package:flutter/material.dart';
import 'package:my_project/core/ui/decorated_text_component.dart';

class LabeledTextComponent extends StatelessWidget {
  final String label;
  final String text;
  final double size;
  const LabeledTextComponent({Key? key,this.size =0, this.label = '', this.text = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        DecoratedTextComponent(text: label),
        SizedBox(width: 20),
        SizedBox(height:size),
        Text(text),
      ],
    );
  }
}