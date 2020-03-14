import "package:flutter/material.dart";
import 'catagories.dart';

class Resultpage extends StatefulWidget {
  int marks;
  Resultpage({Key key , @required this.marks}): super(key : key);
     @override
  _ResultpageState createState() => _ResultpageState(marks);
}

class _ResultpageState extends State<Resultpage> {
   List<String> images=[
     "images/sucess.png",
      "images/good.png",
       "images/bad.png",
   ];

   String message;
   String image;
  @override
   void initState(){
     if (marks>=25){
       image= images[0];
       message="You did very well \n"+"You Scored $marks";
     }else if(15<marks && marks<25){
       image=images[1];
       message="You Can Do Better..\n"+"You Scored $marks";
     }else{
       image=images[2];
       message="Better luck next time..\n"+"You Scored $marks";
     }
     super.initState();
   }

   int marks;
   _ResultpageState(this.marks);
 
  @override
    Widget build(BuildContext context) {
     return Scaffold(
       appBar:AppBar(
        title:Text(
          "Result",
        ),
       ),
        body:Column(
      children:<Widget>[
        Expanded(
          flex:7,
          child:Material(
            child:Container(
              child:Column(
                children:<Widget>[
                  Material(
                    child:Container(
                      width:300.0,
                      height:300.0,
                      child:ClipRect(
                       child:Image(
                       image:AssetImage(
                        image,
                    ),
                  ),
                ),
              ),
             ),
             Padding(
               padding:EdgeInsets.symmetric(
                 vertical:5.0,
                 horizontal:15.0,
              ),
            child: Center(
                child:Text(
                 message ,
                style:TextStyle(
                  fontSize:20.0,
                  ), 
               ),
             )
             ),
             ],
          ),
        ),
      ),   
    ),
    Expanded(
          flex:4,
          child:Row(
            mainAxisAlignment:MainAxisAlignment.center,
           children:<Widget>[
             OutlineButton(
               onPressed:(){
                 Navigator.of(context).pushReplacement(MaterialPageRoute(
                   builder:(context)=>Quiz(),
                 ));
               },
               child: Text(
                 "Continue",
                 style:TextStyle(
                   fontSize:18.0,
                 ),
               ),
            padding:EdgeInsets.symmetric(
              vertical:10.0,
              horizontal:25.0
            ),
            borderSide:BorderSide(width:3.0, color: Colors.indigo),
            splashColor: Colors.indigoAccent,
            ) 
           ],
        ),
        )  
       ],   
      ),
     );
   }
 }
 



