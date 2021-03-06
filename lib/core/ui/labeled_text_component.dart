import 'package:flutter/material.dart';
import 'package:my_project/core/ui/decorated_text_component.dart';

class LabeledTextComponent extends StatelessWidget {
  final String label;
  final String text;
  const LabeledTextComponent({Key? key, this.label = '', this.text = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        DecoratedTextComponent(text: label),
        SizedBox(width: 20),
        Text(text),
      ],
    );
  }
}