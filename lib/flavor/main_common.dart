import 'package:flutter/material.dart';
import 'package:my_project/views/children/create/children_create_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MainCommon extends StatelessWidget {
  const MainCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChildrenCreateView(),
    );
  }
}