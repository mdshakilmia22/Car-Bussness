import 'package:flutter/material.dart';
class SearchItem extends StatefulWidget {
  const SearchItem({Key? key}) : super(key: key);

  @override
  State<SearchItem> createState() => _SearchItemState();
}

class _SearchItemState extends State<SearchItem> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Seach Item',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
        ],
      ),
    ));
  }
}
