import 'package:flutter/material.dart';
import './InstaClone.dart';


void main()=>runApp(MyApp());



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return(
      MaterialApp(
        title: 'Instagram',

        home: InstaClone(),
        theme: ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.black,fontFamily: "Aveny")),
          textTheme: TextTheme(headline6: TextStyle(color: Colors.black)),
        ),
      )
    );
  }
}

