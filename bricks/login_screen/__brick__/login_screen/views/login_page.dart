import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../login_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
      body: BlocProvider(create: (context) {
        return LoginBloc(
            loginRepositories:
                RepositoryProvider.of<LoginRepositories>(context));
      }, child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          print('status ${state.status}');
          if (state.status.isFailure) {
            //run function if login failure
          } else if (state.status.isSuccess) {
            // run function if login success
          }
        },
        child: const LoginForm()
      )),
    );
  }
}
