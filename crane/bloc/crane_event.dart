part of 'crane_bloc.dart';

abstract class CraneEvent extends Equatable {

@override
List<Object> get props => [];
}

class CraneFetched extends CraneEvent {}