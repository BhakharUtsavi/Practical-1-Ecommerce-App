import 'package:app/screens/cart_page.dart';
import 'package:app/screens/detail_page.dart';
import 'package:app/screens/home_page.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context){
          return const HomePage();
        },
        "detail":(context){
          return const DetailPage();
        },
        "cart":(context){
          return const CartPage();
        },
      },
    ),
  );
}