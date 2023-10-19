import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_screen/login_screen.dart';

void main() {
  runApp(MyApp(
    loginRepositories: LoginRepositories(),
  ));
}

class MyApp extends StatefulWidget {
  final LoginRepositories loginRepositories;

  const MyApp({
    Key? key,
    required this.loginRepositories,
  }) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: widget.loginRepositories,
      child: BlocProvider(
          create: (_) => LoginBloc(
                loginRepositories: widget.loginRepositories,
              ),
          child: const MaterialApp(
            home: LoginPage(),
          )),
    );
  }
}
