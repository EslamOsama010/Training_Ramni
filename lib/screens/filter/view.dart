import 'package:eslam_app/methods.dart';
import 'package:eslam_app/screens/filter/widgets/item%202.dart';
import 'package:eslam_app/screens/filter/widgets/item1.dart';
import 'package:eslam_app/screens/photo/view.dart';
import 'package:flutter/material.dart';

import 'contoller.dart';

class FilterScreen extends StatelessWidget {
  final controller = FilterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.close,
            size: 25,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Filters',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          top: 20,
          right: 25,
          left: 25,
        ),
        width: double.infinity,
        color: Colors.grey[100],
        child: SafeArea(
          child: Column(
            children: [
              Item1(
                name: 'Categories',
              ),
              Item2(
                name: 'Beds',
              ),
              Item2(
                name: 'Cabinets',
              ),
              Item2(
                name: 'Chair And Seating',
              ),
              Item2(
                name: 'Chests',
              ),
              Item2(
                name: 'Clocks',
              ),
              Item1(
                name: 'Brand',
              ),
              Item2(
                name: 'Roche Bobois',
              ),
              Item2(
                name: 'Edra',
              ),
              Item2(
                name: 'Poilform',
              ),
              Item2(
                name: 'Christopher Guy',
              ),
              Item2(
                name: 'Kartell',
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  navigateTo(
                    context,
                    PhotoScreen(),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 80, right: 80,top: 15,bottom: 15),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Apply Filter',
                    style: TextStyle(
                      color: Colors.white,
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
