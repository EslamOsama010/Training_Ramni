import 'package:eslam_app/screens/filter/contoller.dart';
import 'package:flutter/material.dart';


class Item2 extends StatefulWidget {
  final name;

  Item2({this.name});

  @override
  _Item2State createState() => _Item2State();
}

class _Item2State extends State<Item2> {
  final controller = FilterController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Checkbox(
            activeColor: Colors.pinkAccent,
            onChanged: (bool? val) {
              controller.isChecked = !controller.isChecked;
              setState(() {});
            },
            value: controller.isChecked,
          ),
          Text(
            widget.name,
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),

        ],
      ),
    );
  }
}





