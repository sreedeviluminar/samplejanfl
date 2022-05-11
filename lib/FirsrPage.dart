import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Secondpage.dart';

void main(){
  runApp(MaterialApp(home: First(),));
}
class First extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Navigator and routes"),
     ),
     body: Center(
       child: ElevatedButton(
         child: Text("Goto"),
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>Second())
           );
         },
       ),
     ),
   );
  }
}