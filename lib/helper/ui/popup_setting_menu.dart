import 'package:flutter/material.dart';

class SettingItem {
  final String text;
  final IconData icon;

  const SettingItem({required this.text,required this.icon});

}


class SettingItems {

  static const List<SettingItem> settingsList = [
    itemSettings,
    itemLogout
  ];

  static const itemSettings = SettingItem(
      text: 'Ajustes',
      icon: Icons.settings
      );

  static const itemLogout = SettingItem(
      text: 'Cerrar Sesion',
      icon: Icons.logout
  );

}


    PopupMenuItem<SettingItem> buildItem(SettingItem item) => PopupMenuItem(  // mapea elementos de clase SettingItem al formato de PopMenuItem
        value: item,
        child: Row(
          children: [
            Icon(item.icon,color:  Colors.black,size: 20,),
            const SizedBox(width: 12,),
            Text(item.text),
          ],
        ));

    void onSelected(BuildContext, SettingItem item, Function settingAction, Function logoutAction) { //funcion de cada boton del menu popup
      switch (item) {
        case SettingItems.itemSettings:
          settingAction; // ir a la pestaña settings
          break;

        case SettingItems.itemLogout:
          logoutAction; // Cerrar sesion e ir a la pestaña login
          break;
      }
    }


class PopUpSettingMenu extends StatelessWidget {
  final void Function() settingAction;
  final void Function() logoutAction;

  const PopUpSettingMenu({Key? key, required this.settingAction, required this.logoutAction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<SettingItem>(
        onSelected: (item) => onSelected(context, item, settingAction, logoutAction),
        itemBuilder: (context) => [
          ...SettingItems.settingsList.map(buildItem).toList()
        ],
      child: const Icon(Icons.settings, color: Colors.white),
    );
  }


}
