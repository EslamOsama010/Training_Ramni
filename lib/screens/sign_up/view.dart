import 'package:eslam_app/methods.dart';
import 'package:eslam_app/screens/verify/view.dart';
import 'package:flutter/material.dart';
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.pinkAccent,
        title:  CircleAvatar(
          radius: 28,
          backgroundColor: Colors.white,
          child: Text(
            'R',
            style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 27,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body:Container(
        width: double.infinity,
        color: Colors.pinkAccent,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.25,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
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
                                    width: 100,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        color: Colors.pinkAccent, fontSize: 20),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 1,
                                    width: 100,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 12),
                                labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                hintText: 'Islam Osama',
                                labelText: "Enter Name",
                                fillColor: Colors.grey[100],
                                filled: true,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                hintText: 'islam osama @ yahoo.com',
                                labelText: "Enter Email",
                                hintStyle: TextStyle(fontSize: 12),
                                labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                                fillColor: Colors.grey[100],
                                filled: true,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                hintText: '01066178922',
                                labelText: "Enter Mobile",
                                hintStyle: TextStyle(fontSize: 12),
                                labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                                fillColor: Colors.grey[100],
                                filled: true,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                hintText: '123456',
                                labelText: "Enter Password",
                                hintStyle: TextStyle(fontSize: 12),
                                labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                                fillColor: Colors.grey[100],
                                filled: true,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                hintText: '123456',
                                labelText: "Confirm Password",
                                hintStyle: TextStyle(fontSize: 12),
                                labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                                fillColor: Colors.grey[100],
                                filled: true,
                              ),
                            ),
                            SizedBox(height: 50,),
                            InkWell(
                              onTap: (){
                                navigateTo(context, VerifyScreen(),);
                              },
                              child: Container(
                                padding: const EdgeInsets.only(left: 80,right: 80,top: 15,bottom: 15),
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                  child: Text(
                                    'Next',
                                    style: TextStyle(color: Colors.white,),
                                  ),

                              ),
                            ),
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
