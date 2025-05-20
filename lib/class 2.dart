import 'package:flutter/material.dart';

import 'main.dart';
import 'text.dart';



class Myapp extends StatelessWidget {    //agola hocce stateless widget ar flu catamo
  const Myapp({super.key});



  @override
  Widget build(BuildContext context) {   // materialapp hocce app ar inicial point
    return MaterialApp(
      title:'batch 10 flutter',
      home : Home(),    // home page open ar jonno atotoko


    );
  }
}