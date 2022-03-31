import 'package:flutter/material.dart';
import 'package:my_project/core/ui/decorated_text_component.dart';
import 'package:my_project/core/ui/labeled_text_component.dart';
import 'package:my_project/core/ui/user_header_component.dart';
import 'package:my_project/helper/ui/ui_library.dart';

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
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(right: 90),
                child: Text('UV ACTUAL'),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Placeholder(),
              ),
              SizedBox(height: 20),
              LabeledTextComponent(label: 'Highest uv of the day:', text: '11:00 PM - 12:18 PM', size: 70),
              LabeledTextComponent(label: 'Range of hours with UVI considered high:', text: '3:00 - 5:00'),
              LabeledTextComponent(label: 'Temperature:', text: '25°', size: 60),
              LabeledTextComponent(label: 'UV:', text: '9'),
              LabeledTextComponent(label: 'Hour:', text: '3:00 PM', size: 60),
              SizedBox(height: 50),
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        DecoratedTextComponent(text: 'the exposure time is safe!'),
                        SizedBox(width: 6),
                        Icon(Icons.notifications_none),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        DecoratedTextComponent(text: 'Highest uv of the day:'),
                        SizedBox(width: 6),
                        Icon(Icons.notifications_none),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}