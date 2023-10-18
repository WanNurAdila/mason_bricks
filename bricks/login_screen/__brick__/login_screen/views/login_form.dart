import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../login_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
        listener: (context, state) async {
          if (state.status.isFailure) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.failResult),
            ));
          } else if (state.status.isSuccess) {
            //run if login success
          }
        },
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            {{credential.pascalCase()}}Input(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: PasswordInput(),
            ),
            LoginButton()
          ],
        ));
  }
}

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});
  @override
  PasswordInputState createState() => PasswordInputState();
}


class {{credential.pascalCase()}}Input extends StatelessWidget {
const {{credential.pascalCase()}}Input ({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.{{credential}} != current.{{credential}},
      builder: (context, state) {
        return TextField(
          key:  const Key('loginForm_{{credential}}Input_textField'),
          onChanged: ({{credential}}) =>
              context.read<LoginBloc>().add(Login{{credential.pascalCase()}}Changed({{credential}})),
          decoration: const InputDecoration(
            isDense: true,
            hintText:'Enter your {{credential}}',
                   enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE6E6E6), width: 1.0),
            ),
            errorBorder:  OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE6E6E6), width: 1.0),
            ),
            focusedBorder:  OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE6E6E6), width: 1.0),
            ),
          )
        );
      },
    );
  }
}
class PasswordInputState extends State<PasswordInput> {
  

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<LoginBloc>().add(LoginPasswordChanged(password)),
          obscureText: _obscureText,
          decoration: InputDecoration(
            isDense: true,
            hintText: 'Enter your password',
            suffix: InkWell(
              onTap: () {
                _toggle();
              },
              child: const Icon(
                Icons.visibility_outlined,
                size: 16,
                color: Color(0xff595959),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE6E6E6), width: 1.0),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE6E6E6), width: 1.0),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE6E6E6), width: 1.0),
            ),
            // errorText: state.password.invalid ? 'Wrong Password' : null,
          ),
        );
      },
    );
  }
}

class LoginButton extends StatelessWidget {
const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
return state.status.isInProgress ?  SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: const StadiumBorder()),
                  onPressed: null,
                  child: const Text(
                    'Loading',
                    
                  ),
                ),
              )
            : SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  key: const Key('loginForm_continue_raisedButton'),
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: const StadiumBorder()),
                  onPressed: state.password.isValid && state.{{credential}}.isValid &&
                          state.status.isInProgress == false
                      ? () {
                          context.read<LoginBloc>().add(const LoginSubmitted());
                        }
                      : null,
                  child:  Text(
                    state.status.isInProgress ? 'Loading' : 'Sign In',
              
                  ),
                ),
              );
    
      });
  }
}