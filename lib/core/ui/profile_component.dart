import 'package:flutter/material.dart';

class ProfileComponent extends StatelessWidget {
  const ProfileComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(children: <Widget>[
          Icon(
            Icons.person,
            size: 100,
          ),
          Text('Karla'),
        ]),
        Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Datos del menor',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Icon(
                  Icons.edit,
                  size: 30,
                ),
              ],
            ),
            Text('Nombre completo: Karla Silvia Lopez'),
            Text('Fecha Nacimiento: 15 Octubre de 2014'),
            Text('Edad 7 años'),
            Icon(
              Icons.delete,
            ),
          ],
        )),
      ],
    );
  }
}
