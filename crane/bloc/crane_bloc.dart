
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'crane_event.dart';
part 'crane_state.dart';

class CraneBloc extends Bloc<CraneEvent, CraneState> {
  CraneBloc() : super (const CraneState()) {
    on<CraneFetched>(_onCraneFetched);

  }


  Future<void> _onCraneFetched (
      CraneFetched campaigns, Emitter<CraneState> emit) async {
            try {
      
      if (state.status == CraneStatus.initial) {
        
        return emit(state.copyWith(
            status: CraneStatus.success,
            ));
      }

  
    } catch(_) {
         emit(state.copyWith(
            status: CraneStatus.failure,
            ));
    }
      }
}