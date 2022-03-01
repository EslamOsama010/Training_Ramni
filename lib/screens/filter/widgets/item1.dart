import 'package:flutter/material.dart';

class Item1 extends StatelessWidget {
  final name ;

  Item1({ this.name}) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          Text(name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
          Spacer(),
          Container(
            height: 1,
            width: 180,
            color: Colors.grey.withOpacity(0.5),
          ),

        ],
      ),
    );
  }
}
