import 'package:eslam_app/screens/addto/controller.dart';
import 'package:eslam_app/screens/checkout/view.dart';
import 'package:eslam_app/methods.dart';
import 'package:flutter/material.dart';

class AddToScreen extends StatefulWidget {
  @override
  _AddToScreenState createState() => _AddToScreenState();
}

class _AddToScreenState extends State<AddToScreen> {
  final controller = AddToController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {
              controller.isPressed = !controller.isPressed;
              setState(() {});
            },
            icon: Icon(
              controller.isPressed ? Icons.favorite : Icons.favorite_border,
              color: controller.isPressed ? Colors.red : Colors.black,
              size: 25,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 3.2,
                      margin: const EdgeInsets.all(15),
                      child: PageView(
                        physics: BouncingScrollPhysics(),
                        onPageChanged: (index) {
                          controller.namesNumber = index;
                          setState(() {});
                        },
                        children: [
                          Image.asset(
                            'assets/images/chair.png',
                          ),
                          Image.asset(
                            'assets/images/chair1.png',
                          ),
                          Image.asset(
                            'assets/images/chair2.png',
                          ),
                          Image.asset(
                            'assets/images/cups.jpg',
                          ),
                          Image.asset(
                            'assets/images/coffe.png',
                          ),
                          Image.asset(
                            'assets/images/flower.png',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children:List.generate(controller.names.length, (index) =>  Container(
                          margin: const EdgeInsets.only(left: 5),
                          height: 10,
                          width:  index == controller.namesNumber?20:10,
                          decoration: BoxDecoration(
                            color: index == controller.namesNumber?Colors.pinkAccent:Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),)
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: ListTile(
                        leading: Text(
                          controller.names[controller.namesNumber],
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        title: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star_border,
                              color: Colors.pinkAccent,
                              size: 17,
                            ),
                            Text('4.5'),
                          ],
                        ),
                        trailing: Text('\$1700',
                            style: TextStyle(
                                color: Colors.pinkAccent,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 15,
                ),
                height: MediaQuery.of(context).size.height / 3,
                child: DefaultTabController(
                  length: 4,
                  child: Column(
                    children: [
                      TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: TextStyle(fontSize: 12),
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.pinkAccent,
                        indicatorColor: Colors.pinkAccent,
                        tabs: [
                          Tab(
                            text: 'Description',
                          ),
                          Tab(
                            text: 'Reviews',
                          ),
                          Tab(
                            text: 'Offers',
                          ),
                          Tab(
                            text: 'Policy',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 10, left: 10, top: 10),
                              child: Text(
                                'Minimalist Styling Is Not About Creating A Cold,\nHard,Empty White Box Of A Home.It Is About Using\nSimple And Natural Forms,And Talking Away Layers\nWithout Losing The Aesthetic Appeal Of The Space.\nThe Focus Is On Shape , With A Furniture And\n Accessories',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
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
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, right: 10, left: 10),
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                controller.minus();
                                setState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.white)),
                                child: Center(
                                    child: Icon(
                                  Icons.remove,
                                  size: 20,
                                  color: Colors.white,
                                )),
                              ),
                            ),
                            Spacer(),
                            Text(
                              '${controller.quantity}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                controller.plus();
                                setState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.white)),
                                child: Center(
                                    child: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Colors.white,
                                )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        )),
                    Spacer(),
                    Container(
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.pinkAccent,
                      ),
                      child: TextButton.icon(
                        onPressed: () {
                          navigateTo(
                            context,
                            CheckoutScreen(),
                          );
                        },
                        label: Text(
                          'ADD TO CART',
                          style: TextStyle(color: Colors.white),
                        ),
                        icon: Icon(
                          Icons.shopping_cart_outlined,
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
    );
  }
}
