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
        appBar: AppBar(
          title: Center(child: Text('Stack and Positioned',style: TextStyle(fontSize: 30,color: Colors.black),)),
        ),
        body: Center(
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.green,
                height: 200,
                width: 300,
              ),
              Positioned(
                top: -50,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
