part of 'crane_bloc.dart';

enum CraneStatus { initial, success, failure}

class CraneState extends Equatable {

  const CraneState ({
    this.status = CraneStatus.initial,
  });

  final CraneStatus  status;

  CraneState copyWith({
    CraneStatus? status,
  }) {
    return CraneState( status: status ?? this.status);
  }

  @override
  String toString(){
    return ''' CraneState { status : $status}''';
  }

  @override
  List<Object> get props => [status];


}
