import 'package:equatable/equatable.dart';

class {{name.pascalCase()}}Model extends Equatable {

String params;

{{name.pascalCase()}}Model({
    required this.params,
  });

  @override
  List<Object?> get props => [params];
}