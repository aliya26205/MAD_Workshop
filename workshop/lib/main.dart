import 'package:flutter/material.dart';//import package to work
import 'screens/hello_worls.dart';

void main(){//entry point to code
 runApp(const MyApp());//runapp:- use to stat the application
}

class MyApp extends StatelessWidget{//actual app 2 types of widgets stateless[static no actions] and statefull [ui or data get update]
  const MyApp({super.key});//constructor reference to parent page 

  @override //because we want our content widget:- content of page
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Flutter Workshop',//title of app
      theme:ThemeData(colorScheme: .fromSeed(seedColor:Colors.deepPurple)),
      home:const HelloWorld(),//first screen to load 1st page 
    );
  }
}

