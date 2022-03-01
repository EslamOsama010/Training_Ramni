import 'package:eslam_app/methods.dart';
import 'package:eslam_app/screens/edit/widgets/item1.dart';
import 'package:eslam_app/screens/massage/view.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
        title: Text(
          'My Account',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(top: 15,bottom: 15),
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Edit Profile',
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 10),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: Colors.pinkAccent,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/islam.jpeg'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: '\t\t\t\t\tIslam Osama\n',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          )),
                      TextSpan(
                          text: 'islam osama @ yahoo.com',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              letterSpacing: 1)),
                    ])),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.9,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                    child: Container(
                      width: double.infinity,
                      padding:
                          const EdgeInsets.only(top: 50, left: 25, right: 25),
                      child: Column(
                        children: [
                          Item1(
                            trailing: Container(
                                height: 20,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text('6'))),
                            icon: Icons.car_rental,
                            name: 'Upcoming Orders',
                          ),
                          Item1(
                            icon: Icons.location_on,
                            name: 'Mange Address',
                          ),
                          Item1(
                            icon: Icons.date_range,
                            name: 'Update Payment',
                          ),
                          Item1(
                            icon: Icons.chat,
                            press: (){
                              navigateTo(context, MassageScreen(),);
                            },
                            name: 'My Chats',
                          ),
                        ],
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
