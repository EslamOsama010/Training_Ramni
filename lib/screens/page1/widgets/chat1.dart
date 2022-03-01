import 'package:flutter/material.dart';

class Chat1 extends StatelessWidget {
  final icon ;
  final name ;
  final trailing ;
final press ;
  Chat1({this.icon, this.name, this.trailing, this.press}) ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(bottom: 5),
        child: ListTile(
          leading: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
          title: Text(name,style: TextStyle(color: Colors.white),),
          trailing: trailing,
        ),
      ),
    );
  }
}
