import 'package:flutter/material.dart';
import 'package:twitch_tv/app/modules/login/widgets/raised_button_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Boas-vindas à Twitch",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            RaisedButtonWidget(
              text: "Fazer login",
              onPressed: () {},
            ),
            SizedBox(
              height: 8,
            ),
            RaisedButtonWidget(
              text: "Cadastrar-se",
              onPressed: () {},
              type: RaisedButtonType.grey,
            )
          ],
        ),
      ),
    );
  }
}
