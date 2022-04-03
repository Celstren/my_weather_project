import 'package:flutter/material.dart';
import 'package:my_project/helper/ui/ui_library.dart';

class RecoverPasswordView extends StatefulWidget {
  const RecoverPasswordView({Key? key}) : super(key: key);

  @override
  _RecoverPasswordView createState() => _RecoverPasswordView();
}

class _RecoverPasswordView extends State<RecoverPasswordView> {
  final TextEditingController emailController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();

  final TextEditingController passwordController = TextEditingController();
  final FocusNode passwordFocusNode = FocusNode();

  final TextEditingController passwordControllerConfirmed = TextEditingController();
  final FocusNode passwordFocusNodeConfirmed = FocusNode();

  final TextStyle style = TextStyle();

  late int pageState = 1;


  Widget Message(int state){
    switch (state) {
      case 1:
        return Column(
          children: [
            Text("Enter the registered Email to the account",
              style: TextStyle(color: Colors.red),),
            const SizedBox(height: 20),
          ],
        );
      case 2:
        return Column(
        children: [
          Text("This email does not have a registered account",
            style: TextStyle(color: Colors.red),),
          const SizedBox(height: 20),
        ],
      );
      default:
        return const SizedBox();
    }
  }

  Widget FieldsAndButtonsToStates(int state) {
    switch (state) {
      case 1:
        return Column(
          children: [
            AppButton(
              text: 'Send',
              onPressed: () {
                setState(() {
                  pageState = ++pageState;
                });
                print('recover password');
              },
            ),
            const SizedBox(height: 20),
            AppButton(
              text: 'ReSend',
              onPressed: () {
                print('recover password');
              },
            ),
            const SizedBox(height: 60),
          ],
        );
      case 2:
        return Column(
          children: [
            AppButton(
              text: 'Send',
              onPressed: () {
                setState(() {
                  pageState = ++pageState;
                });
                print('recover password');
              },
            ),
            const SizedBox(height: 60),
          ],
        );
      default:
        return Column(
          children: [
            AppTextForm(
              width: 300,
              controller: passwordController,
              focusNode: passwordFocusNode,
              style: style,
              preffix: Icons.vpn_key,
            ),
            const SizedBox(height: 20),
            AppTextForm(
              width: 300,
              controller: passwordControllerConfirmed,
              focusNode: passwordFocusNodeConfirmed,
              style: style,
              preffix: Icons.vpn_key,
            ),
            const SizedBox(height: 80),
            AppButton(
              text: 'Recover',
              onPressed: () {
                print('recover password');
              },
            ),
            const SizedBox(height: 60),
            Text("change correctly!"),
            const SizedBox(height: 60),
          ],
        );

    }
  }




  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 90),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Recover password'),
                ),
                const SizedBox(height: 20),
                Message(pageState),
                const SizedBox(height: 20),
                AppTextForm(
                  width: 300,
                  controller: emailController,
                  focusNode: emailFocusNode,
                  style: style,
                  preffix: Icons.email_outlined,
                ),
                const SizedBox(height: 20),
                FieldsAndButtonsToStates(pageState),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text('Not a member?'),
                    Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
