import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  onPressed() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),
      body: const Column(children: [
        Text('Username'),
        TextField(
          key: Key('loginForm_usernameInput_textField'),
        ),
        Text('Password'),
        TextField(
          key: Key('loginForm_passwordInput_textField'),
        )
      ]),
    );
  }
}
