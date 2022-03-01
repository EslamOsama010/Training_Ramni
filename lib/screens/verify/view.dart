import 'dart:ui';
import 'dart:io';
import 'package:eslam_app/screens/filter/view.dart';
import 'package:eslam_app/methods.dart';
import 'package:flutter/material.dart';

class VerifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.pinkAccent,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Text(
                          'R',
                          style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'RAMNI',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                      Spacer(
                        flex: 3,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                    child: SingleChildScrollView(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 1,
                                    width: 50,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                  Spacer(),
                                  Text(
                                    'OTP VERIFICATION',
                                    style: TextStyle(
                                        color: Colors.pinkAccent, fontSize: 20),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 1,
                                    width: 50,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                ],
                              ),
                            ),
                         const   SizedBox(
                              height: 20,
                            ),
                            Text('OTP HAS BEEN SENT TO 01066178922'),
                            SizedBox(
                              height: 60,
                            ),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    height: 80,
                                    width: 60,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    height: 80,
                                    width: 60,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    height: 80,
                                    width: 60,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    height: 80,
                                    width: 60,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            InkWell(
                              onTap: () {
                                navigateTo(
                                  context,
                                  FilterScreen(),
                                );
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.only(left: 95, right: 95,top: 15,bottom: 15),
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  'VERIFY OTP',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: '00:30\t\t',
                                  style: TextStyle(
                                      color: Colors.grey.withOpacity(0.5))),
                              TextSpan(
                                  text: 'Resend OTP',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15)),
                            ],),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
