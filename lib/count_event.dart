import 'package:equatable/equatable.dart';

abstract class CountEventBase extends Equatable{

}

class CalculatorCount extends CountEventBase{
  final int value;

  CalculatorCount({required this.value});

  @override
  List<Object?> get props => [value];

}