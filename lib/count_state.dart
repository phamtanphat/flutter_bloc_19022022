import 'package:equatable/equatable.dart';

abstract class CountStateBase extends Equatable{}

class ResultState extends CountStateBase{
  final int value;

  ResultState({required this.value});

  @override
  List<Object?> get props => [value];

}