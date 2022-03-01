import 'package:eslam_app/screens/order/view.dart';
import 'package:eslam_app/methods.dart';
import 'package:flutter/material.dart';

class SaleOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'CheckOut',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, ),
                  child: ListTile(
                    leading: Text(
                      'Shipping Address',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 30,
                  ),
                  height: MediaQuery.of(context).size.height / 3,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          hintStyle: TextStyle(fontSize: 12),
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                          fillColor: Colors.grey.withOpacity(0.2),
                          hintText: 'Islam_osama',
                          labelText: 'Name',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.2),
                          hintText: 'Talkha,MeetAnter',
                          labelText: 'Address',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintStyle: TextStyle(fontSize: 12),
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 12),
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.2),
                          hintText: '66666',
                          labelText: 'Pincode',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 15
                  ),
                  child: ListTile(
                    leading: Text(
                      'Payment Method',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 30,
                  ),
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: DefaultTabController(
                    length: 4,
                    child: Column(
                      children: [
                        TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          labelStyle: TextStyle(fontSize: 11),
                          unselectedLabelColor: Colors.black,
                          labelColor: Colors.pinkAccent,
                          indicatorColor: Colors.pinkAccent,
                          tabs: [
                            Tab(
                              text: 'Debit Card',
                            ),
                            Tab(
                              text: 'Credit Card',
                            ),
                            Tab(
                              text: 'UPI',
                            ),
                            Tab(
                              text: 'Net Banking',
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    right: 10, left: 10, top: 10),
                                child: Column(
                                  children: [
                                    TextField(
                                      decoration: InputDecoration(
                                        hintStyle: TextStyle(fontSize: 12),
                                        labelStyle: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                        filled: true,
                                        fillColor: Colors.grey.withOpacity(0.2),
                                        hintText: 'Islam_osama',
                                        labelText: 'Name on Card',
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        hintStyle: TextStyle(fontSize: 12),
                                        labelStyle: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                        filled: true,
                                        fillColor: Colors.grey.withOpacity(0.2),
                                        hintText: '30005011206154',
                                        labelText: 'Card Number',
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintStyle:
                                                    TextStyle(fontSize: 12),
                                                labelStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20),
                                                filled: true,
                                                fillColor: Colors.grey
                                                    .withOpacity(0.2),
                                                hintText: '05/01',
                                                labelText: 'EXP date',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior
                                                        .always,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintStyle:
                                                    TextStyle(fontSize: 12),
                                                labelStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20),
                                                filled: true,
                                                fillColor: Colors.grey
                                                    .withOpacity(0.2),
                                                hintText: '05/01',
                                                labelText: 'EXP date',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior
                                                        .always,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                  child: Text(
                                'Done',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )),
                              Center(
                                  child: Text(
                                'Very Good',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )),
                              Center(
                                  child: Text(
                                '3333ash!',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 30,
                  ),
                  child: Row(
                    children: [
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'Total Amount\n',
                            style: TextStyle(
                                color: Colors.grey, letterSpacing: 1)),
                        TextSpan(
                            text: '\t\t\t\t\$1700.00',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ])),
                      Spacer(),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.pinkAccent,
                        ),
                        child: TextButton.icon(
                          onPressed: () {
                            navigateTo(
                              context,
                              OrderScreen(),
                            );
                          },
                          label: Text(
                            'PLACE ORDER',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
