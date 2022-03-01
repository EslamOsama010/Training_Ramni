import 'package:eslam_app/screens/onbording/view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(),
      home: StartScreen(),

      //  PhotoScreen(),
      // AddToScreen(),
      // OrderScreen(),
      // SignInScreen(),
      // SignUpScreen(),
      // EditScreen(),
      // VerifyScreen(),
      // Page1Screen(),
      // FilterScreen(),
      // CheckoutScreen(),
      // MassageScreen(),
      // SaleOrderScreen(),
    );
  }
}
