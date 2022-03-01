import 'package:eslam_app/screens/page1/view.dart';
import 'package:eslam_app/screens/verify/view.dart';
import 'package:flutter/material.dart';

import '../../methods.dart';

class SignInScreen extends StatelessWidget {
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
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Spacer(flex: 2,),
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
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Container(
                    height: MediaQuery.of(context).size.height/2,
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
                                    'Sign In',
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
                                labelText: "User Name",
                                hintText: 'Islam Osma',
                                fillColor: Colors.grey[100],
                                filled: true,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              obscureText:true,
                              decoration: InputDecoration(
                                hintText: '01066178922',
                                hintStyle: TextStyle(fontSize: 12),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.visibility_off),
                                ),
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                                fillColor: Colors.grey[100],
                                filled: true,
                              ),
                            ),
                            SizedBox(height: 60,),
                            InkWell(
                              onTap: (){
                                navigateWithoutHistory(context, Page1Screen(),);
                              },
                              child: Container(
                                padding: const EdgeInsets.only(left: 85,right: 85,top: 15,bottom: 15),
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                  child: Text(
                                    'SIGN IN',
                                    style: TextStyle(color: Colors.white,),
                                  ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            InkWell(
                                onTap: (){
                                  navigateWithoutHistory(context, VerifyScreen());
                                },
                                child: Center(child: Text('Forget Password ?',style: TextStyle(color: Colors.grey,fontSize: 17),))),

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
