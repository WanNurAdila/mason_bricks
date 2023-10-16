part of '{{name}}_bloc.dart';

enum {{name.pascalCase}}Status { initial, success, failure}

class {{name.pascalCase()}}State extends Equatable {

  const {{name.pascalCase()}}State {(
    this.status = {{name.pascalCase}}Status.initial,
  )};

  final {{name.pascalCase()}}Status  status;

  {{name.pascalCase()}}State copyWith({
    {{name.pascalCase()}}Status? status;
  }) {
    return {{{name.pascalCase()}}State( status: status ?? this.status)};
  }

  @override
  String toString(){
    return ''' {{name.pascalCase()}}State { status : $status}''';
  }

  @override
  List<Object> get props => [status,];


}
