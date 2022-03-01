import 'package:flutter/material.dart';

class Chat3 extends StatelessWidget {
  final image;
  final name;
  final sale;
  final press;

  Chat3({this.image, this.name, this.sale, this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 15,),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
            ),
            child: Image.asset(
              image,
              height: 70,
              width: 70,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            name,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.only(right: 10, left: 20),
            child: Row(
              children: [
                Text(
                  sale,
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.pinkAccent,
                      ),
                      onPressed:press,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
