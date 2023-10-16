part of '{{name}}_bloc.dart';

abstract class {{name.pascalCase()}}Event extends Equatable {

@override
List<Object> get props => [];
}

class {{name.pascalCase()}}Fetched extends {{name.pascalCase()}}Event {}