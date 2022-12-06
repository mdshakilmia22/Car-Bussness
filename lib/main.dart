import 'package:car_bussiness/first_screen.dart';
import 'package:car_bussiness/routing/routing.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: RoutingPage(),
    );
  }
}
