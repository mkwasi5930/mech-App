
import 'package:flutter/material.dart';
import 'package:mech_app/screens/sign.dart';



void main(){
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mech',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SignIn(),    
      
    );
  }
}