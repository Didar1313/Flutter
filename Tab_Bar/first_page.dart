import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class First_Page extends StatefulWidget {
  const First_Page({super.key});

  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('This first page')),
    );
  }
}
