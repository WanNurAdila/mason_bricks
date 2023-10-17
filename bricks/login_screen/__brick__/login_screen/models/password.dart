import 'package:formz/formz.dart';

enum PasswordValidationError { empty }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([String value = '']) : super.dirty(value);

  @override
  PasswordValidationError? validator(String? value) {
    RegExp regex = RegExp(
        r"""^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-8])(?=.*?[!@#_$&*.|'?`%+=:;,^~\[\]\(\)\{\}\</>/-/|"]).{8,}$""");
    bool valid = false;
    if (regex.hasMatch(value!)) {
      valid = true;
    }

    return valid == true ? null : PasswordValidationError.empty;
  }
}

// Bcss_2013
// NftTech123!
