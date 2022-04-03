import 'package:flutter/material.dart';

class ConfirmDialog extends StatelessWidget {

  final String titleConfirmDialog, contentConfirmDialog;
  final void Function() onPressedWithButtonYes;

  const ConfirmDialog({Key? key, this.titleConfirmDialog='', this.contentConfirmDialog='', required this.onPressedWithButtonYes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(titleConfirmDialog),
      content: Text(contentConfirmDialog),
      actions: [
        TextButton(onPressed: onPressedWithButtonYes, child: Text("Si")),
        TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text("No"))
      ],
    );
  }
}
