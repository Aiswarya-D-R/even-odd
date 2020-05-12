

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oddeven/operpg.dart';

void main()
{
  runApp(Mainpg());
}
class Mainpg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Operpg() ,
      ),
    );
  }
}
