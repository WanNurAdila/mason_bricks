import 'package:equatable/equatable.dart';

class CraneModel extends Equatable {

String params;

CraneModel({
    required this.params,
  });

  @override
  List<Object?> get props => [params];
}