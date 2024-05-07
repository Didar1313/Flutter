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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Step>stepList=[
    const Step(title: Text("Beginner"), content: Center(
      child: Text("You are a beginner Programmer"),
    )),
    const Step(title: Text("Mid Level"), content: Center(
      child: Text("You are a mid level Programmer"),
    )),
    const Step(title: Text("Advance"), content: Center(
      child: Text("You are a advance Programmer"),
    )),
  ];

  int _currentState=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Stepper",style: TextStyle(fontWeight: FontWeight.bold,
          color: Colors.black,fontSize: 30),)),
      backgroundColor: Colors.green,
      ),
      body: Stepper(
        currentStep: _currentState,
        steps: stepList,
        onStepContinue: (){
          if(_currentState < stepList.length-1){
            setState(() {
              _currentState+=1;
            });
          }
        },
        onStepCancel: (){
          if(_currentState==0){
            return;
          }
          setState(() {
            _currentState-=1;
          });
        },
        onStepTapped: (int index){
          setState(() {
            _currentState=index;
          });
        },

      ),
    );
  }
}



