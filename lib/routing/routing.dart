import 'package:car_bussiness/first_screen.dart';
import 'package:car_bussiness/routing/accounts.dart';
import 'package:car_bussiness/routing/nottification.dart';
import 'package:car_bussiness/routing/search.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
class RoutingPage extends StatefulWidget {
  const RoutingPage({Key? key}) : super(key: key);

  @override
  State<RoutingPage> createState() => _RoutingPageState();
}

class _RoutingPageState extends State<RoutingPage> {

  int selectedIndex=0;


  void onTap(value){
    setState(() {
      selectedIndex=value;
    });
  }
    final List<Widget> _item=[
    const FirstScreen(),
    const SearchItem(),
    const Noty(),
    const AccoutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _item.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(

         currentIndex: selectedIndex,
          elevation: .0,
          onTap: onTap,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,size: 28,color: Colors.grey,),
                 label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.search,size: 28,color: Colors.grey,),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications,size: 28,color: Colors.grey,),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.add_user,size: 28,color: Colors.grey,),
                label: '')
          ]),
    );

  }
}
