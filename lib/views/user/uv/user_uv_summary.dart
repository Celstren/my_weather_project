import 'package:flutter/material.dart';
import 'package:my_project/core/ui/decorated_text_component.dart';
import 'package:my_project/core/ui/labeled_text_component.dart';
import 'package:my_project/core/ui/user_header_component.dart';
import 'package:my_project/helper/ui/ui_library.dart';
import 'package:my_project/views/user/location/user_location_view.dart';

import '../location/components/no_children_component.dart';

class UserUVSummary extends StatelessWidget {
  const UserUVSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: UserHeaderComponent(),
              ),
              SizedBox(height: 50),
              Container(
                alignment: Alignment.centerLeft,
                child: Text('Hola User01, buenas tardes')
                ),
              SizedBox(height: 10),
              AddUserWidget(),
              SizedBox(height: 10),
              LabeledTextComponent(
                  label: 'Highest uv of the day:',
                  text: '11:00 PM - 12:18 PM',
                  size: 70),
              LabeledTextComponent(
                  label: 'Range of hours with UVI considered high:',
                  text: '3:00 - 5:00'),
              LabeledTextComponent(
                  label: 'Temperature:', text: '25°', size: 60),
              LabeledTextComponent(label: 'UV:', text: '9'),
              LabeledTextComponent(label: 'Hour:', text: '3:00 PM', size: 60),
            ],
          ),
        ),
      ),
    );
  }
}

class AddUserWidget extends StatelessWidget {
  const AddUserWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text(
              'Bienvenido a <AppName> al parecer aún no tienes registrado a un hijo en la aplicación',
              textAlign: TextAlign.center),
          Icon(
            Icons.add_circle_outline,
            size: 120,
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Para registrar un hijo presiona el botón agregar',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10),
          Container(
                alignment: Alignment.centerLeft,
                child: Text('¿Qué es el UVI?',
                    style: TextStyle(color: Colors.blue),
                ),
          )],
      ),
    );
  }
}
