import 'package:calculator_new/screens/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Mult extends StatefulWidget {
  const Mult({Key? key}) : super(key: key);

  @override
  State<Mult> createState() => _MultState();
}

class _MultState extends State<Mult> {
  TextEditingController fnum=TextEditingController();
  TextEditingController snum=TextEditingController();
  double _mult=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text("Multiplication",
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 40
            ),
          ),
        ),
        drawer: MyDrawer(),
        body: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(height: 15,),
              TextField(
                controller: fnum,
                decoration: InputDecoration(
                    labelText: "First number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    )
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: snum,
                decoration: InputDecoration(
                    labelText: "Second number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    )
                ),
              ),
              SizedBox(height: 15,),
              SizedBox(height: 55,
                width: double.infinity,
                child:  RaisedButton(
                  color: Colors.indigoAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  onPressed: (){
                    var getFnum= double.parse(fnum.text);
                    var getSnum=double.parse(snum.text);
                    print(_mult);
                    setState(() {
                      _mult=getFnum*getSnum;
                    });
                  },
                  child: Text("MULTIPLY",
                    style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 40
                    ),
                  ),
                ),
              ),
              Text(_mult.toString(),
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
