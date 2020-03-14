import 'package:flutter/material.dart';


class Homepage extends StatefulWidget { 
   @override
  _HomepageState createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {
  @override
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text(
          "Search"
        ),
      ),
    body:Container(
      child: FloatingActionButton(onPressed: (){
         Navigator.pushNamed(context, '/catagories');
         },),
    ),

   
    );
  }
}

