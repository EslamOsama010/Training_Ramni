import 'package:flutter/material.dart';

class Chat2 extends StatelessWidget {
  final text ;

   Chat2({ this.text}) ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 20,right: 15),
        margin: const EdgeInsets.only(bottom: 5),
        child: Row(
          children: [
            Text(text,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            Spacer(),
            Container(
              height: 1,
              width: 70,
              color: Colors.grey.withOpacity(0.5),
            ),
            Spacer(),
            TextButton(onPressed: (){}, child: Text('See All',style: TextStyle(color: Colors.pinkAccent),)),
          ],
        ),
      ),
    );
  }
}
