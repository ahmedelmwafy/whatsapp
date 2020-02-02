import 'package:flutter/material.dart';
import 'package:whatsapp/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",  
      theme: ThemeData(
        primaryColor:Color(0xff075E54) ,
        accentColor: Color(0xff25D366), 
      ),    
      home: WhatsAppHome(),
    );
  }
}