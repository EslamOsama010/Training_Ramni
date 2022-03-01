import 'package:eslam_app/screens/addto/view.dart';
import 'package:eslam_app/screens/checkout/view.dart';
import 'package:eslam_app/screens/edit/view.dart';
import 'package:eslam_app/screens/massage/view.dart';
import 'package:eslam_app/screens/page1/controller.dart';
import 'package:eslam_app/screens/page1/widgets/chat%202.dart';
import 'package:eslam_app/screens/page1/widgets/chat%203.dart';
import 'package:eslam_app/screens/page1/widgets/chat1.dart';
import 'package:eslam_app/methods.dart';
import 'package:flutter/material.dart';

class Page1Screen extends StatefulWidget {
  @override
  _Page1ScreenState createState() => _Page1ScreenState();
}

class _Page1ScreenState extends State<Page1Screen> {
  final controller = Page1Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      drawer: Drawer(
        child: Container(
          padding:
              const EdgeInsets.only(top: 40, left: 20, right: 30, bottom: 10),
          color: Colors.pinkAccent,
          width: double.infinity,
          child: SafeArea(
            child: Column(
              children: [
                DrawerHeader(
                    child: Container(
                  width: double.infinity,
                  color: Colors.pinkAccent,
                  child: Column(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/islam.jpeg'),
                        ),
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Islam Osama\n',
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
                      ),
                    ],
                  ),
                )),
                Divider(
                  color: Colors.white,
                  endIndent: 50,
                  indent: 50,
                  thickness: 0.5,
                ),
                Chat1(
                  name: 'Home',
                  icon: Icons.home_outlined,
                ),
                Chat1(
                  name: 'My Cart',
                  press: () {
                    navigateTo(context, CheckoutScreen());
                  },
                  icon: Icons.shopping_cart,
                ),
                Chat1(
                  name: 'Upcoming Orders',
                  icon: Icons.car_rental,
                  trailing: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: Text(
                        '6',
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.bold),
                      ))),
                ),
                Chat1(
                  name: 'Offer Zone',
                  icon: Icons.assignment,
                ),
                Chat1(
                  name: 'My Account',
                  press: () {
                    navigateTo(
                      context,
                      EditScreen(),
                    );
                  },
                  icon: Icons.person,
                ),
                Chat1(
                  icon: Icons.chat_bubble_outline,
                  name: 'My Chats',
                  press: () {
                    navigateTo(
                      context,
                      MassageScreen(),
                    );
                  },
                ),
                Chat1(
                  name: 'Help',
                  press: () {
                    navigateTo(
                      context,
                      MassageScreen(),
                    );
                  },
                  icon: Icons.help_outline,
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {
              navigateTo(context, AddToScreen());
            },
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: TextFormField(
                          enabled: false,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              hintText: 'Search',
                              hintStyle: TextStyle(fontSize: 12)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: Icon(
                        Icons.send,
                        size: 20,
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Chat2(
              text: 'TRENDING PRODUCTS',
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.only(left: 15),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.names.length,
                  itemBuilder: (ctx, index) => InkWell(
                    onTap: () {
                      navigateTo(
                        context,
                        AddToScreen(),
                      );
                    },
                    child: Chat3(
                      press: () {
                        navigateTo(
                          context,
                          CheckoutScreen(),
                        );
                      },
                      name: controller.names[index],
                      sale: controller.sales[index],
                      image: controller.photos[index],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Chat2(
              text: 'POPULAR CATEGORIES',
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(left: 15),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (ctx, index) => InkWell(
                    onTap: () {
                      controller.selectIndex = index;
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        right: 10,
                      ),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: index == controller.selectIndex
                            ? Colors.pinkAccent
                            : Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                            controller.texts[index],
                            style: TextStyle(
                                color: index == controller.selectIndex
                                    ? Colors.white
                                    : Colors.black),
                          )),
                    ),
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.texts.length,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.only(left: 15),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.names.length,
                  itemBuilder: (ctx, index) => InkWell(
                    onTap: () {
                      navigateTo(
                        context,
                        AddToScreen(),
                      );
                    },
                    child: Chat3(
                      press: () {
                        navigateTo(
                          context,
                          CheckoutScreen(),
                        );
                      },
                      name: controller.names[index],
                      sale: controller.sales[index],
                      image: controller.photos[index],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pinkAccent,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.car_rental,
                color: Colors.white,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
              label: ''),
        ],
      ),
    );
  }
}
