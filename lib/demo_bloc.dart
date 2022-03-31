import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_19022022/count_bloc.dart';
import 'package:flutter_bloc_19022022/count_event.dart';
import 'package:flutter_bloc_19022022/count_state.dart';
class DemoBloc extends StatefulWidget {

  @override
  State<DemoBloc> createState() => _DemoBlocState();
}

class _DemoBlocState extends State<DemoBloc> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Demo Bloc"),
        ),
        body: BlocConsumer<CountBloc,CountStateBase>(
          listener: (context ,state){

          },
          builder: (context ,state){
            return Container(
              constraints: BoxConstraints.expand(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Count : ${state.value}"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: (){
                            context.read<CountBloc>().add(CalculatorCount(value: 1));
                          },
                          child: Text("+")
                      ),
                      ElevatedButton(
                          onPressed: (){

                            context.read<CountBloc>().add(CalculatorCount(value: 0));
                          },
                          child: Text("0")
                      ),
                      ElevatedButton(
                          onPressed: (){

                            context.read<CountBloc>().add(CalculatorCount(value: -1));
                          },
                          child: Text("-")
                      ),
                    ],
                  )
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
