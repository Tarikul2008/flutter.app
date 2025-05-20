import'package:flutter/material.dart';
import 'main.dart';
import 'class 2.dart';



class Home extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,

      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(Icons.add,size: 45,color: Colors.black,),
            IconButton(onPressed: (){
              print('Clicked me');
            },icon: Icon(Icons.delete)),
            TextButton(onPressed: (){}, child: Text('click me', style: TextStyle(
              fontSize: 60,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),)),
            Text('This is a colum',style: TextStyle(
              fontSize: 30,
              color: Colors.red,

            ),),
            Text('This is a colum',style: TextStyle(
              fontSize: 30,
              color: Colors.red,

            ),),
            Text('This is a colum',style: TextStyle(
              fontSize: 30,
              color: Colors.red,

            ),),
            Text('This is a colum',style: TextStyle(
              fontSize: 30,
              color: Colors.red,

            ),),
            Text('This is a colum',style: TextStyle(
              fontSize: 30,
              color: Colors.red,

            ),),

          ],
        ),
      ),
    );
  }
}