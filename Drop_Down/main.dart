import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

List<String>gender=[
  "Male","Female","Others"
];
var selected_value;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("Drop_Down",style: TextStyle(fontSize: 30),)),),
      body: Center(
        child: DropdownButton(
          hint: Container(child: Text('Choose',style: TextStyle(fontSize: 30),),
          decoration: BoxDecoration(color: Colors.green),),
          items: gender.map((item) => DropdownMenuItem(
              value: item,
                child: Text(item,style: TextStyle(fontSize: 30),))).toList(),
           value: selected_value, // This property holds the currently selected value of the dropdown.
           onChanged: (val) {
            setState(() {         //
              selected_value=val;
            });
           },
        ),
      ),
      ),
    );
  }
}




