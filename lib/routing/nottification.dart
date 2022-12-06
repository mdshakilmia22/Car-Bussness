import 'package:flutter/material.dart';
class Noty extends StatefulWidget {
  const Noty({Key? key}) : super(key: key);

  @override
  State<Noty> createState() => _NotyState();
}

class _NotyState extends State<Noty> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Nottification Item',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
        ],
      ),
    ));
  }
}
