import 'package:eslam_app/screens/page1/view.dart';
import 'package:eslam_app/methods.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Spacer(),
              Image.asset(
                'assets/images/corr.png',
                width: 200,
                height: 200,
                color: Colors.pinkAccent,
              ),
              SizedBox(
                height: 20,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: '\t\t\t\t\t\t\t\t\t\t\t\tYour Order\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: '\t\t\t\tHas Been Accepted\n\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'Your items has been placcd and is on\n',
                    style: TextStyle(letterSpacing: 1, color: Colors.grey)),
                TextSpan(
                    text: '\t\t\t\t\t\t\t\tit\'s way to being processed',
                    style: TextStyle(letterSpacing: 1, color: Colors.grey)),
              ])),
              Spacer(),
              InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 60, right: 60, top: 15, bottom: 15),
                    margin: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      'TRACK ORDER',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              InkWell(
                  onTap: () {
                    navigateWithoutHistory(
                      context,
                      Page1Screen(),
                    );
                  },
                  child: Text(
                    'BACK TO HOME',
                    style: TextStyle(color: Colors.pink, fontSize: 15),
                  )),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
