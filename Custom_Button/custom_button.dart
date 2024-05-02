import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class Custom_Button extends StatefulWidget {

  final String btnText;
  final VoidCallback onTap;


   Custom_Button({super.key, required this.btnText, required this.onTap});

  @override
  State<Custom_Button> createState() => _Custom_ButtonState();
}

class _Custom_ButtonState extends State<Custom_Button> {
  @override
  Widget build(BuildContext context) {
    return Bounceable(onTap: widget.onTap,
        child:Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(40),
            ),
            height: 40,
            width: double.maxFinite,
            child: Center(child: Text(widget.btnText,style: TextStyle(color: Colors.red,fontSize: 25),)),
          ),
        )
    );
  }
}
