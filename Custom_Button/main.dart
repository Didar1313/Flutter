import 'package:custom_button/custom_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("Custom Button",style: TextStyle(color: Colors.black),)),backgroundColor: Colors.green,),
      body: Custom_Button(
        btnText: 'Button 1',
        onTap: (){},
      ),
      ),
    );
  }
}


