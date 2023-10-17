import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import '../login_screen.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required LoginRepositories loginRepositories,
  })  : _loginRepositories = loginRepositories,
        super(const LoginState()) {
    on<LoginStarted>(_onLoginStarted);

    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onSubmitted);
  }

  final LoginRepositories _loginRepositories;

  void _onLoginStarted(
    LoginStarted event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginState(
        status: state.password.isValid && state.email.isValid
            ? FormzSubmissionStatus.failure
            : FormzSubmissionStatus.failure));
  }

  void _onEmailChanged(
    LoginemailChanged event,
    Emitter<LoginState> emit,
  ) async {
    final email = Email.dirty(event.email);
    emit(state.copyWith(
      email: email,
      status: email.isValid
          ? FormzSubmissionStatus.inProgress
          : FormzSubmissionStatus.canceled,
    ));
  }

  void _onPasswordChanged(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    final password = Password.dirty(event.password);
    emit(state.copyWith(
      password: password,
      status: password.isValid
          ? FormzSubmissionStatus.inProgress
          : FormzSubmissionStatus.canceled,
    ));
  }

  void _onSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (state.status.isInProgress) {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
      try {
        await _loginRepositories.logIn(
            email: state.email.value, password: state.password.value);
        emit(state.copyWith(status: FormzSubmissionStatus.success));
      } catch (_) {
        emit(state.copyWith(
          status: FormzSubmissionStatus.failure,
          failResult: '$_',
        ));
      }
    }
  }
}
