import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Row_Demo extends StatefulWidget {
  const Row_Demo({super.key});

  @override
  State<Row_Demo> createState() => _Row_DemoState();
}

class _Row_DemoState extends State<Row_Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column'),centerTitle: true,),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     Text("Wellcome to the column"),
      //     Text('First Line'),
      //     Text('Second Line'),
      //     Text('Third Line')
      //   ],
      // ),
      // body: Row(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text('First Row'),
      //     Text("Second Row"),
      //     Text("Third Row")
      //   ],
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('images/bird.png',),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Bird',style: TextStyle(fontSize: 30),),
              Row(
                children: [
                  Icon(Icons.star,size: 40,),
                  Text('10.0',style:TextStyle(fontSize: 30),),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}
