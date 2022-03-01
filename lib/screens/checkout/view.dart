import 'package:eslam_app/screens/checkout/widgets/chat%201.dart';
import 'package:eslam_app/screens/sale_order/view.dart';
import 'package:eslam_app/methods.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Your Cart',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
          child: SafeArea(
            child: Column(
              children: [
                Chat1(
                  name: 'Panka Chair',
                  image: 'assets/images/chair.png',
                ),
                Chat1(
                  name: 'Ramni Chair',
                  image: 'assets/images/chair1.png',
                ),
                Chat1(
                  name: 'Islam Chair',
                  image: 'assets/images/chair2.png',
                ),
                Chat1(
                  name: 'Rami Cup',
                  image: 'assets/images/cups.jpg',
                ),
                Chat1(
                  name: 'Mahmoud Cup ',
                  image: 'assets/images/coffe.png',
                ),
                Chat1(
                  name: 'Art Deco Home',
                  image: 'assets/images/flower.png',
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: '\tTotal Amount\n',
                      style: TextStyle(color: Colors.grey,fontSize: 17)),
                  TextSpan(
                      text: '\t\t\$1700.00',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ])),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      right: 65, left: 65, bottom: 5, top: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.pinkAccent,
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                      navigateTo(
                        context,
                        SaleOrderScreen(),
                      );
                    },
                    label: Text(
                      'Check Out',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
