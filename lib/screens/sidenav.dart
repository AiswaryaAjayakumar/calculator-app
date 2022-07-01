

import 'package:calculator_new/screens/drawer.dart';
import 'package:flutter/material.dart';

class SideNav extends StatelessWidget {
  const SideNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text("Calculator",
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 50
          ),
          ),
        ),
        drawer: MyDrawer(),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 35,),
              Center(
                child: Text("M",
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 80
                ),
                ),
              ),
              Text("istakes",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35
                ),
              ),
              Text("A",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 80
                ),
              ),
              Text("llow",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35
                ),
              ),
              Text("T",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 80
                ),
              ),
              Text("hinking to",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35
                ),
              ),
              Text("H",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 80
                ),
              ),
              Text("appen",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35
                ),
              ),
            ],

          )

        ),

      ),


    );

  }
}
