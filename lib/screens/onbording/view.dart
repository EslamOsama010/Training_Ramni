import 'package:eslam_app/methods.dart';
import 'package:eslam_app/screens/sign_in/view.dart';
import 'package:eslam_app/screens/sign_up/view.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.pinkAccent,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Spacer(
                            flex: 2,
                          ),
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Center(
                                child: Text(
                              'R',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'RAMNI',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2),
                          ),
                          Spacer(
                            flex: 3,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                         Spacer(flex: 1,),
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
                          SizedBox(
                            height: 10,
                          ),
                          InteractiveViewer(
                            child: Image.asset(
                              'assets/images/study.png',
                              color: Colors.white,
                              width: 200,
                              height: 300,
                            ),
                          ),
                          Spacer(flex: 1,),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(
                            flex: 1,
                          ),
                          Stack(
                            children: [
                              InteractiveViewer(
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/bags.png',
                                    height: 250,
                                    width: 200,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 100, horizontal: 130),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.pinkAccent),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Center(
                                      child: Text(
                                    'R',
                                    style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                            ],
                          ),
                          Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          navigateTo(context, SignUpScreen());
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 60, right: 60,top: 20,bottom: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            'GET STARTED',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                          onTap: () {
                            navigateTo(context, SignInScreen());
                          },
                          child: Center(
                              child: Text(
                            'SIGN IN',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ))),
                    ],
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
