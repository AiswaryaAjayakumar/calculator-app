import 'package:calculator_new/screens/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sub extends StatefulWidget {
  const Sub({Key? key}) : super(key: key);

  @override
  State<Sub> createState() => _SubState();
}

class _SubState extends State<Sub> {
  TextEditingController fnum=TextEditingController();
  TextEditingController snum=TextEditingController();
  var _sub=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,

          title: Text("Subtraction",
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 50
            ),
          ),
        ),
        drawer: MyDrawer(),
        body:Container(
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
                    var getFnum=int.parse(fnum.text);
                    var  getSnum=int.parse(snum.text);
                    print(_sub);
                    setState(() {
                      _sub=getFnum-getSnum;
                    });
                  },
                  child: Text("SUBTRACTION",
                    style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 35
                    ),
                  ),
                ),
              ),
              Text(_sub.toString(),
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
