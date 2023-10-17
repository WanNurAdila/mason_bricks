part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.status = FormzSubmissionStatus.initial,
    this.failResult = '',
    this.{{credential}} = const {{credential.pascalCase()}}.pure(),
    this.password = const Password.pure(),
  });

  final FormzSubmissionStatus status;
  final String failResult;
  final {{credential.pascalCase()}} {{credential}};

  final Password password;

  LoginState copyWith({
    FormzSubmissionStatus? status,
    String? failResult,
    {{credential.pascalCase()}}? {{credential}},
    Password? password,
  }) {
    return LoginState(
      status: status ?? this.status,
      failResult: failResult ?? this.failResult,
      {{credential}}: {{credential}} ?? this.{{credential}},
      password: password ?? this.password,
    );
  }

  @override
  List<Object> get props => [status, {{credential}}, password];
}
