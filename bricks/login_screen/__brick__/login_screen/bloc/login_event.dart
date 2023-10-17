part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginStarted extends LoginEvent {
  const LoginStarted();
}

class Login{{credential.pascalCase()}}Changed extends LoginEvent {
  const Login{{credential.pascalCase()}}Changed(this.{{credential}});

  final String {{credential}};

  @override
  List<Object> get props => [{{credential}}];
}

class LoginPasswordChanged extends LoginEvent {
  const LoginPasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

class LoginSubmitted extends LoginEvent {
  const LoginSubmitted();
}
