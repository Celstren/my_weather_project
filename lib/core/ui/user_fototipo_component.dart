import 'package:flutter/material.dart';
import 'package:my_project/data/viewmodels/fototipo_option.dart';
import 'package:my_project/views/children/create/pages/page_three/components/fototipo_option_component.dart';

class UserFototipoComponent extends StatelessWidget {
  final FototipoOptionViewmodel? model;
  const UserFototipoComponent({Key? key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Text("El fototipo de Karla según la escala fitzpatrcik es fototipo II"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                Text('White, fair'),
              ],
            ),
            Container(
              width: 200,
              child: Text(
                  'La caracteristica de este fototipo es que generalmente se quema y broncea con dificultad'),
            )
          ],
        )
      ],
    ));
  }
}
