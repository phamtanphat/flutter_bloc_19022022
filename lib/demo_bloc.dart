import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class DemoBloc extends StatefulWidget {

  @override
  State<DemoBloc> createState() => _DemoBlocState();
}

class _DemoBlocState extends State<DemoBloc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Bloc"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count : 0"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: (){

                    },
                    child: Text("+")
                ),
                ElevatedButton(
                    onPressed: (){

                    },
                    child: Text("0")
                ),
                ElevatedButton(
                    onPressed: (){

                    },
                    child: Text("-")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
