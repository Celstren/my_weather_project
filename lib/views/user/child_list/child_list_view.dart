import 'package:flutter/material.dart';

import '../../../helper/ui/ui_library.dart';
import '../../children/summary/children_summary_view.dart';

class ChildListlView extends StatelessWidget {
  const ChildListlView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerLeft,
                child: Text('Hola Pablo, buenas tardes')),
            ChildList(),
          ],
        ),
      ),
    );
  }
}

class ChildList extends StatelessWidget {
  const ChildList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 10),
        Text('Bienvenido a <AppName> ¿De qué hijo deseas recibir información?',
            textAlign: TextAlign.center),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(top: 20),
          width: 250,
          child: Childs(context),
        ),
      ],
    );
  }

  Wrap Childs(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Icon(
              Icons.person,
              size: 100,
            ),
            Text('Hijo 1'),
          ],
        ),
        Column(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChildrenSummaryView()),
                );
              },
              child: Icon(
                Icons.person,
                size: 100,
              ),
            ),
            Text('Karla'),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.add_circle_outline,
              size: 100,
            ),
            Text('Agregar'),
          ],
        ),
      ],
    );
  }
}
