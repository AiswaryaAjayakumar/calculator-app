import 'package:calculator_new/screens/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Div extends StatefulWidget {
  const Div({Key? key}) : super(key: key);

  @override
  State<Div> createState() => _DivState();
}

class _DivState extends State<Div> {
  TextEditingController fnum=TextEditingController();
  TextEditingController snum=TextEditingController();
  double _div=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,

          title: Text("Division",
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 55
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
                child: RaisedButton(
                  color: Colors.indigoAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  onPressed: (){
                    print(_div);
                    var getFnum=double.parse(fnum.text);
                    var getSnum=double.parse(snum.text);
                    setState(() {
                      _div=getFnum/getSnum;
                    });

                  },
                  child: Text("DIVIDE",
                    style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 40
                    ),
                  ),
                ),
              ),
              Text(_div.toString(),
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
