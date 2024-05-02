import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Second_Page extends StatefulWidget {
  const Second_Page({super.key});

  @override
  State<Second_Page> createState() => _Second_PageState();
}

class _Second_PageState extends State<Second_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("This is second page"),),
    );
  }
}
