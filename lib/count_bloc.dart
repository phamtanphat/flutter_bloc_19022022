import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_19022022/count_event.dart';
import 'package:flutter_bloc_19022022/count_state.dart';

class CountBloc extends Bloc<CountEventBase, CountStateBase> {
  CountBloc() : super(CountStateInit(value: 0)) {
    on<CalculatorCount>((event, emit) {
      int input = event.value;
      int total = -1;
      if (input == 0) {
        total = 0;
      }else{
        total = state.value + input;
      }
      emit(ResultState(value: total));
    });
  }
}
