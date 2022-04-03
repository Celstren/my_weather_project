
import 'package:flutter/material.dart';

class AcceptanceDialog extends StatelessWidget {
  final String titleAcceptanceDialog, contentAcceptanceDialog;
  final void Function() onPressedWithButtonOk;


  const AcceptanceDialog({Key? key, this.titleAcceptanceDialog='', this.contentAcceptanceDialog='', required this.onPressedWithButtonOk}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(titleAcceptanceDialog),
      content: Text(contentAcceptanceDialog),
      actions: [
        TextButton(onPressed: onPressedWithButtonOk, child: Text("Ok")),
      ],
    );
  }
}
