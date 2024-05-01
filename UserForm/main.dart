import 'package:flutter/material.dart';

import 'next_page.dart';

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
      home:HomePage(),
    );
  }
}

TextEditingController _emailConntroller=TextEditingController();
TextEditingController _passConntroller=TextEditingController();
final _userKey=GlobalKey<FormState>();


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('User Form')),),
      body: Form(
        key: _userKey,
        child: Column(
          children: [
            TextFormField(     //taking useer input
              validator: (value){
                if(value!.isEmpty){
                  return "Field is Empty";
                }
              },
              controller: _emailConntroller, // for control user input
              decoration: InputDecoration(
                  hintText: "Enter your email",
                  border: OutlineInputBorder(
                      borderSide: BorderSide()
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return 'Field is Empty';
                  }
                },
                controller: _passConntroller,
                decoration: InputDecoration(
                    hintText: "Enter your password",
                    border: OutlineInputBorder(
                        borderSide: BorderSide()
                    )
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              _userKey.currentState!.validate();
              
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Check()));
            }, child: Text('SignUp'))
          ],
        ),
      ),
    );
  }
}

