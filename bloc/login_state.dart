part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.status = FormzSubmissionStatus.initial,
    this.failResult = '',
    this.email = const Email.pure(),
    this.password = const Password.pure(),
  });

  final FormzSubmissionStatus status;
  final String failResult;
  final Email email;

  final Password password;

  LoginState copyWith({
    FormzSubmissionStatus? status,
    String? failResult,
    String? email,
    Email? email,
    Password? password,
  }) {
    return LoginState(
      status: status ?? this.status,
      failResult: failResult ?? this.failResult,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<Object> get props => [status, email, password];
}
