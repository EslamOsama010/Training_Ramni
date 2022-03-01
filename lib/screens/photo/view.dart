import 'dart:ui';

import 'package:eslam_app/screens/page1/view.dart';
import 'package:eslam_app/methods.dart';
import 'package:flutter/material.dart';

class PhotoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.pinkAccent,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.all(50),
                child: Center(
                  child: Text.rich(TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                            text: '\t\t\tHello Islam\n',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                letterSpacing: 1)),
                        TextSpan(
                            text: 'Welcome to the Ramni',
                            style: TextStyle(fontSize: 22, letterSpacing: 1)),
                      ])),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/islam.jpeg'),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10,right: 10),
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: MaterialButton(
                  child: Text(
                    'Change Profile Picture',
                    style: TextStyle(color: Colors.pinkAccent,fontSize: 11),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 50,),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: const EdgeInsets.only(left: 65,right: 65,bottom: 15,top: 15),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                    child: Text(
                      'UPLOAD PICTURE',
                      style: TextStyle(color: Colors.pinkAccent,),
                    ),
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  navigateTo(context, Page1Screen());
                },
                  child: Center(child: Text('SKIP',style: TextStyle(color: Colors.white,fontSize: 17),))),
            ],
          ),
        ),
      ),
    );
  }
}
