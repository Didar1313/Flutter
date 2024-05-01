import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom_Sheet extends StatefulWidget {
  const Bottom_Sheet({super.key});

  @override
  State<Bottom_Sheet> createState() => _Bottom_SheetState();
}

class _Bottom_SheetState extends State<Bottom_Sheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
          child: Text('Bottom Sheet',style: TextStyle(fontSize: 25),)),backgroundColor: Colors.green,),
      body: Center(child: ElevatedButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context){
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child:Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange
                  ),
                  child: ListTile(
                    title: Text('Didar Bhuiyan',style: TextStyle(fontSize: 35),),
                    subtitle: Text('CameraMan',style: TextStyle(fontSize: 25),),
                    trailing: Icon(Icons.camera_alt_outlined,size: 45,),
                  ),
                ),Container(
                  decoration: BoxDecoration(
                    color: Colors.blue
                  ),
                  child: ListTile(
                    title: Text('Omar Faruk',style: TextStyle(fontSize: 35),),
                    subtitle: Text('Mawlana',style: TextStyle(fontSize: 25),),
                    trailing: Icon(Icons.notifications_sharp,size: 45,),
                  ),
                ),
              ],
            )
          );
        },);
      }, child: Text('Open',style: TextStyle(fontSize: 25),),),),
    );
  }
}
