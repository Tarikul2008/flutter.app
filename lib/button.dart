import'package:flutter/material.dart';
import 'main.dart';


class classthreemoduleseven extends StatelessWidget {
  const classthreemoduleseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('button'),
         ElevatedButton(onPressed: (){
           print('Clicked');
         }, child: Text('Next')
         ),
        ],
      ),
    );
  }
}

