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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text('Drawer',style: TextStyle(fontSize: 35),),),
        ),
        drawer: Drawer(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.person),
                    ),
                    SizedBox(height: 5,),
                    Text('Didar'),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.favorite),
                      title: Text('Rate this app'),
                    ),ListTile(
                      leading: Icon(Icons.share),
                      title: Text('Share this app'),
                    ),ListTile(
                      leading: Icon(Icons.info_outline),
                      title: Text('About us'),
                    ),ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('Logout'),
                    ),
                  ],
                ),
              ),



      ),
      ));
  }
}
