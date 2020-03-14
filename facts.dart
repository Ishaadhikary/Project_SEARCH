import 'package:flutter/material.dart';
import 'dart:async';
//import 'package:flutter/services.dart';
import 'dart:convert';

//import 'package:splashscreen/quizpage.dart';
String changeToQuize(String langFactName) {
  String langName;
  if (langFactName == "EYES") {
    langName = "eyes1";
  } else if (langFactName == "NOSE") {
    langName = "nose1";
  } else {
    langName = "heart1";
  }
  return langName;
}

class getfactjson extends StatelessWidget {
  final langFactName;

  getfactjson(this.langFactName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("FACTS"),
      ),
      body: new Container(
        child: new Center(
          child: Column(
            children: <Widget>[
              new FutureBuilder(
                future: DefaultAssetBundle.of(context).loadString(
                    "assets/" + this.langFactName.toLowerCase() + ".jSON"),
                builder: (context, snapshot) {
                  List mydata = json.decode(snapshot.data.toString());

                  return new ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: <Widget>[
                          Card(
                            margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    mydata[index]['*'],
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  SizedBox(height: 2.0),
                                ]),
                          ),
                          
                        ],
                      );
                    },
                    itemCount: mydata==null?0:mydata.length,
                  );
                },
                
              ),
              /*SizedBox(height: 20.0,),
                       RaisedButton(
                        child: Text(
                          'Play Quiz!',
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) =>
                                getfactjson(changeToQuize(langFactName)),
                            // builder: (context ,' /facts')
                          ));
                        },
                      ),*/
            ],
          ),
          
        ),

      ),
    );
  }
}

class FactPage extends StatefulWidget {
  var langFactName;
  FactPage({@required this.langFactName});
  @override
  _FactPageState createState() => _FactPageState(langFactName);
}

abstract class _FactPageState extends State<FactPage> {
 
  var langFactName;
  _FactPageState(langFactName);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('Play Quiz',),
        onPressed: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder:(context)=>getfactjson(changeToQuize(langFactName)),
         // builder: (context ,' /facts')
            ));
      }),
    );
  }
}

/*class factpage extends StatefulWidget {

  @override
  _factpageState createState() => _factpageState();
}

class _factpageState extends State<factpage> {
  String langName;
  var mydata;
  @override
  Widget build(BuildContext context) {
  
      langName=changeToQuize(langFactName);
      return Scaffold(
        body:Bottom 

      )





    
      


      
    );
  }
}*/
/*return FutureBuilder(
      future: DefaultAssetBundle.of(context)
          .loadString("assets/" + this.langFactName.toLowerCase() + ".jSON"),
      builder: (context, snapshot) {
        List mydata = json.decode(snapshot.data.toString());
        
        return new ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      mydata[index]['*'],
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
                  ]
                  ),
                  
            );
           
            


          },
        );
        

      },
    
    );*/
