import 'package:equatable/equatable.dart';

abstract class CountStateBase extends Equatable{
  final int value;

  CountStateBase({required this.value});

  @override
  List<Object?> get props => [value];
}

class CountStateInit extends CountStateBase{
  final int value;

  CountStateInit({required this.value}) : super(value: value);
}

class ResultState extends CountStateBase{
  final int value;

  ResultState({required this.value}) : super(value: value);
}