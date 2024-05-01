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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('List_view'),
        ),
        body: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.orange,
                child: Icon(Icons.person),
              ),
              title: Text('Didar Bhuiyan',style: TextStyle(fontSize: 30),),
              subtitle: Text('Flutter Developer',style: TextStyle(fontSize: 20),),
              trailing: Icon(Icons.notifications_sharp),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                child: Icon(Icons.person),
              ),
              title: Text('Omar Faruk',style: TextStyle(fontSize: 30),),
              subtitle: Text('Flutter Developer',style: TextStyle(fontSize: 20),),
              trailing: Icon(Icons.notifications_sharp),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.orange,
                child: Icon(Icons.person),
              ),
              title: Text('Farhad Bhuiyan',style: TextStyle(fontSize: 30),),
              subtitle: Text('Flutter Developer',style: TextStyle(fontSize: 20),),
              trailing: Icon(Icons.notifications_sharp),
            ),

          ],
        ),
      ),
    );
  }
}
