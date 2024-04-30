import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Controller extends StatefulWidget {
  const Controller({super.key});

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controller page'),
        centerTitle: true,
      ),
      body: Container(
        height: 300,
        width: 200,
        margin: EdgeInsets.all(10.0),
        child: Center(
            child: Text(
          'This is a Container',
          style: TextStyle(
            fontSize: 20,
          ),
        )),
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0))),
      ),
    );
  }
}
