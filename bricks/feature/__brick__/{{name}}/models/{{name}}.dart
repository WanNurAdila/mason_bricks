import 'package:equatable/equatable.dart';

class {{name.pascalCase()}} extends Equatable {

String params;

{{name.pascalCase()}}({
    required this.params,
  });

  @override
  List<Object?> get props => [params];
}