import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('This is next page')),);
  }
}
