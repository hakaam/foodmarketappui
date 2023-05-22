import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodmarketappui/pages/intro_pages.dart';
import 'package:provider/provider.dart';

import 'models/cart_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}