import 'package:calculator_new/screens/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
 TextEditingController fnum=TextEditingController();
 TextEditingController snum=TextEditingController();
 var _sum=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text("Addition",
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
                    var getFnum=int.parse(fnum.text);
                    var getSnum=int.parse(snum.text);
                    setState(() {
                      _sum=getFnum+getSnum;
                      print(_sum);
                    });
                  },
                  child: Text("ADD",
                    style: TextStyle(
                        color: Colors.pinkAccent,fontSize: 40
                    ),
                  ),
                ) ,
              ),

              Text(_sum.toString(),
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
