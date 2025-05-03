import 'package:flutter/material.dart';   // ati protome import kore nite hobe

void main(){
  runApp(Myapp());    //runapp ar modde widget thake
}

class Myapp extends StatelessWidget {    //agola hocce stateless widget ar flu catamo
  const Myapp({super.key});



  @override
  Widget build(BuildContext context) {   // materialapp hocce app ar inicial point
    return MaterialApp(
        title:'batch 10 flutter',
        home : Home(),


    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(           //scaffold ar modde sob kaj somponno hoi
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.blue,      // amra color nile (Colors.red )aibabe nite pari
      ),

      body: SingleChildScrollView(        //SingleChildScrollView   ata hocce onek gola text lekle jate scrole kora jai sei jonno
        scrollDirection:Axis.horizontal,   //amra row ba colum kibabe nibo nibo horizontali naki verticaly
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('I am tarikul',style: TextStyle(fontSize: 30,color: Colors.red)    //tex ar style korte gale
            ),
            SizedBox(                                                               //style: TextStyle  tarpor atar modde amra front size colors aro onek kico nite pari
              width: 10,
            ),
            Text('I am tarikul',style: TextStyle(fontSize: 30,color: Colors.red)
            ),
            SizedBox(
              width: 10,
            ),

            Text('I am tarikul',style: TextStyle(fontSize: 30,color: Colors.red)
            ),
            SizedBox(
              width: 10,
            ),

            Text('I am tarikul',style: TextStyle(fontSize: 30,color: Colors.red)
            ),
            SizedBox(
              width: 10,
            ),

            Text('I am tarikul',style: TextStyle(fontSize: 30,color: Colors.red)
            ),
            SizedBox(
              width: 10,
            )


          ],
        ),
        ),
       );
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add,size: 50,color: Colors.cyan,),
            IconButton(onPressed:(){

            },icon: Icon(Icons.delete)),
            Text('I am riyad',style: TextStyle(
              fontSize: 25,
              color: Colors.red
            ),),
            Text('I am riyad',style: TextStyle(
                fontSize: 25,
                color: Colors.red
            ),),
            Text('I am riyad',style: TextStyle(
                fontSize: 25,
                color: Colors.red
            ),),
            Text('I am riyad',style: TextStyle(
                fontSize: 25,
                color: Colors.red
            ),),
            Text('I am riyad',style: TextStyle(
                fontSize: 25,
                color: Colors.red
            ),),
            Text('I am riyad',style: TextStyle(
                fontSize: 25,
                color: Colors.red
            ),),
          ],
        ),
      );


  }
}





