import 'package:flutter/material.dart';
import 'package:tab_bar/first_page.dart';
import 'package:tab_bar/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Text('Call',style: TextStyle(fontSize: 30),),
              Text("Message",style: TextStyle(fontSize: 30),)
            ],),
          ),
          body: TabBarView(children: [
            First_Page(),
            Second_Page(),
          ])
        )
      ),
    );
  }
}

