import 'package:flutter/material.dart';

class NoChildrenComponent extends StatelessWidget {
  final String appName;
  const NoChildrenComponent({Key? key, this.appName = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Text(
            'Bienvenido a $appName\nal parecer aún no tienes registrado a un hijo en la aplicación',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Icon(
            Icons.add_circle_outline,
            size: 120,
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Para registrar un hijo presiona el botón agregar',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
