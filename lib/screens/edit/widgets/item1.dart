import 'package:flutter/material.dart';

class Item1 extends StatelessWidget {
  final icon ;
  final name ;
  final trailing ;
  final press;

   Item1({this.icon, this.name, this.trailing, this.press}) ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Icon(
           icon,
            size: 30,
          ),
          title: Text(name),
          trailing: trailing,
        ),
      ),
    );
  }
}
