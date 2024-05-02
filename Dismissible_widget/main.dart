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
        appBar: AppBar(title: Center(child: Text('Dismissibile Widget',style: TextStyle(fontSize: 30,color: Colors.blue),)),),
        body: Center(
          child: Dismissible(
            background: Container(
              color: Colors.green,
              child: Icon(Icons.delete),
            ),
            secondaryBackground: Container(
              color: Colors.amber,
              child: Icon(Icons.add),
            ),
            key: ValueKey('didar'),
            child: ListTile(
              title:Text("Didar Bhuiyan",style: TextStyle(fontSize: 30,color: Colors.orange),),
              subtitle: Text('Flutter Developer',style: TextStyle(fontSize: 20),),
              trailing: Icon(Icons.person,size: 45,),
            ),
          ),
        ),
      ),
    );
  }
}



