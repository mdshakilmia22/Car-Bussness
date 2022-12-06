import 'package:flutter/material.dart';
class AccoutPage extends StatefulWidget {
  const AccoutPage({Key? key}) : super(key: key);

  @override
  State<AccoutPage> createState() => _AccoutPageState();
}

class _AccoutPageState extends State<AccoutPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Accounts Details',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
        ],
      ),
    ));
  }
}
