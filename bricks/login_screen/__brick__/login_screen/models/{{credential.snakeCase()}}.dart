import 'package:formz/formz.dart';

enum {{credential.pascalCase()}}ValidationError { empty }

class {{credential.pascalCase()}} extends FormzInput<String, {{credential.pascalCase()}}ValidationError> {
  const {{credential.pascalCase()}}.pure() : super.pure('');
  const {{credential.pascalCase()}}.dirty([String value = '']) : super.dirty(value); 

  @override
  {{credential.pascalCase()}}ValidationError? validator(String? value) {

    bool isEmail = {{credential}} == 'email' ? true : false

    // {{#isEmail}}
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

      return regExp.hasMatch(email)  == true ? null :{{credential.pascalCase()}}ValidationError.empty

    // {{/isEmail}}
    // {{^isEmail}}
    //   return value?.isNotEmpty == true ? null : {{credential.pascalCase()}}ValidationError.empty;
    // {{/isEmail}}

    
  }
}
