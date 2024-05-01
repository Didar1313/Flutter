import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:list_view/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> myList = ["one", "two", "three","Four","Five","Six","Seven"];

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
            centerTitle: true,
            title: Text('ListView'),
          ),
          body: Column(
            children: [
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: myList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Center(
                            child: Text(
                              myList[index],
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          color: Colors.orange,
                          height: 110,
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
