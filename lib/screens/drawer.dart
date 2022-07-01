import 'package:calculator_new/screens/add.dart';
import 'package:calculator_new/screens/div.dart';
import 'package:calculator_new/screens/mul.dart';
import 'package:calculator_new/screens/sidenav.dart';
import 'package:calculator_new/screens/sub.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white70,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://image.shutterstock.com/z/stock-vector-illustration-featuring-math-related-elements-424810414.jpg"),
              child: Text("A"),
            ),

              accountName: Text("MATH"),
              accountEmail: Text("The only subject that counts..")),


          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SideNav()));
            },
            title: Text("Home",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            leading:Icon(Icons.home,
              color: Colors.brown,
              size: 35,
            ),
          ),
          Divider(color: Colors.blueGrey,),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Add()));
            },
            title: Text("Addition",
            style: TextStyle(
            fontSize: 20
            ),
            ),
            leading:Icon(Icons.add,
            color: Colors.brown,
              size: 35,
            ),
          ),
          Divider(color: Colors.blueGrey,),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sub()));
            },
            title: Text("Subtraction",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            leading: Icon(Icons.linear_scale,
              color: Colors.brown,
              size: 35,
            ),
          ),
          Divider(color: Colors.blueGrey,),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Mult()));

            },
            title: Text("Multiplication",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            leading: Icon(Icons.star,
              color: Colors.brown,
              size: 35,
            ),
          ),
          Divider(color: Colors.blueGrey,),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Div()));

            },
            title: Text("Division",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            leading: Icon(Icons.percent_outlined,
              color: Colors.brown,
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}
