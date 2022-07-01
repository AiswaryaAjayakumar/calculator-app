
import 'package:calculator_new/screens/front.dart';
import 'package:calculator_new/screens/sidenav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Cal());
}
class Cal extends StatelessWidget {
  const Cal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideNav();


  }
}
