import 'package:flutter/material.dart';
import 'package:my_project/helper/ui/ui_library.dart';
import 'package:my_project/views/user/location/components/no_children_component.dart';

class UserLocationView extends StatefulWidget {
  const UserLocationView({Key? key}) : super(key: key);

  @override
  _UserLocationViewState createState() => _UserLocationViewState();
}

class _UserLocationViewState extends State<UserLocationView> {
  final username = 'User 01';
  final greetings = 'buenas tardes';
  final appName = 'AppName';
  final children = <String>[];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
              children: <Widget>[
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Hola $username, $greetings'),
                ),
                const SizedBox(height: 60),
                children.isEmpty
                    ? NoChildrenComponent(appName: appName)
                    : const SizedBox(),
              ],
            ),
          ),
        ),
    );
  }
}
