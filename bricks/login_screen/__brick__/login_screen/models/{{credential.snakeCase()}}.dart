import 'package:formz/formz.dart';

enum {{credential.pascalCase()}}ValidationError { empty }

class {{credential.pascalCase()}} extends FormzInput<String, {{credential.pascalCase()}}ValidationError> {
  const {{credential.pascalCase()}}.pure() : super.pure('');
  const {{credential.pascalCase()}}.dirty([String value = '']) : super.dirty(value);

  @override
  {{credential.pascalCase()}}ValidationError? validator(String? value) {
    return value?.isNotEmpty == true ? null : {{credential.pascalCase()}}ValidationError.empty;
  }
}
