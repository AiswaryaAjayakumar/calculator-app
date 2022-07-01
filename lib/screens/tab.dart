

import 'package:calculator_new/screens/add.dart';
import 'package:calculator_new/screens/div.dart';
import 'package:calculator_new/screens/mul.dart';
import 'package:calculator_new/screens/sub.dart';
import 'package:flutter/material.dart';

class TabView extends StatelessWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text("CALCULATOR",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 45
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(text: "Addition",icon: Icon(Icons.add),),
                Tab(text: "Subtract",icon: Icon(Icons.linear_scale),),
                Tab(text: "Multiplication",icon: Icon(Icons.star),),
                Tab(text: "Division",icon: Icon(Icons.percent_outlined),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Add(),
              Sub(),
              Mult(),
              Div(),
            ],
          ),
        ),
      ),
    );
  }
}
