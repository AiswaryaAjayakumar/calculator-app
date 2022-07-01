
import 'package:calculator_new/screens/add.dart';
import 'package:calculator_new/screens/div.dart';
import 'package:calculator_new/screens/front.dart';
import 'package:calculator_new/screens/mul.dart';
import 'package:calculator_new/screens/sub.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Front extends StatefulWidget {
  const Front({Key? key}) : super(key: key);

  @override
  State<Front> createState() => _FrontState();
}

class _FrontState extends State<Front> {
  int _mycurrentindex=0;
  List pages=[Add(),Sub(),Mult(),Div()];
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("CALCULATOR",
          style: TextStyle(
            color: Colors.white,
            fontSize: 45.8
          ),
          ),
        ),
        body: pages[_mycurrentindex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _mycurrentindex=index;
            });
          },
          currentIndex: _mycurrentindex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.cyan,
          iconSize: 40,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.add,
              color: Colors.brown,
            ),

              label: "Add",

            ),
            BottomNavigationBarItem(icon: Icon(Icons.linear_scale,
              color: Colors.teal,
            ),

                label: "Subtract"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.star,
              color: Colors.purpleAccent,
            ),
              label: "Multiply",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.percent_outlined,
              color: Colors.indigo,
            ),
              label: "Division",
            )
          ],
        ),
      ),
    );



  }
}
