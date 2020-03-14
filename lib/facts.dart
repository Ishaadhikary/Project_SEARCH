import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:splashscreen/quizpage.dart';

class getfactjson extends StatelessWidget {
  final langFactName;

  getfactjson(this.langFactName);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
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
                    SizedBox(height: 6.0),
                  ]),
            );
          },
        );
      },
    );
  }
}
