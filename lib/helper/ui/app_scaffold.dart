part of 'ui_library.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  const AppScaffold({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.person, color: Colors.white),
        title: const Icon(Icons.ac_unit, color: Colors.white),
        centerTitle: true,
        actions:  <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: PopUpSettingMenu(settingAction: () {}, logoutAction: () {}
            )
          ),
        ],
      ),
      body: body,
    );
  }
}
