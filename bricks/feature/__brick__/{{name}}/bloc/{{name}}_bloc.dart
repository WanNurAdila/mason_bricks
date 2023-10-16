
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part '{{name}}_event.dart';
part '{{name}}_state.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc() : super (const {{name.pascalCase()}}State()) {
    on<{{name.pascalCase()}}Fetched>(_on{{name.pascalCase()}}Fetched);
  }

  Future<void> _on{{name.pascalCase()}}Fetched (
      {{name.pascalCase()}}Fetched campaigns, Emitter<{{name.pascalCase()}}State> emit) async {
            try {      
      if (state.status == {{name.pascalCase()}}Status.initial) {
        
        return emit(state.copyWith(
            status: {{name.pascalCase()}}Status.success,
            ));
      }
  
    } catch(_) {
         emit(state.copyWith(
            status: {{name.pascalCase()}}Status.failure,
            ));
    }
      }
}