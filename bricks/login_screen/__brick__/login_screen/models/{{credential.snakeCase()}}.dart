import 'package:formz/formz.dart';

enum {{credential.pascalCase()}}ValidationError { empty }

class {{credential.pascalCase()}} extends FormzInput<String, {{credential.pascalCase()}}ValidationError> {
  const {{credential.pascalCase()}}.pure() : super.pure('');
  const {{credential.pascalCase()}}.dirty([String value = '']) : super.dirty(value); 

  @override
  {{credential.pascalCase()}}ValidationError? validator(String? value) {

    {{#emailRegex}}
    RegExp regex = RegExp(
        r"""^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-8])(?=.*?[!@#_$&*.|'?`%+=:;,^~\[\]\(\)\{\}\</>/-/|"]).{8,}$""");
       bool valid = false;
    if (regex.hasMatch(value!)) {
      valid = true;
    }    
       return valid == true ? null : {{credential.pascalCase()}}ValidationError.empty;
    {{/emailRegex}}
    {{^emailRegex}}
      return value?.isNotEmpty == true ? null : {{credential.pascalCase()}}ValidationError.empty;
    {{/emailRegex}}

    
  }
}
