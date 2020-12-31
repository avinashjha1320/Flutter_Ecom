import 'package:grosery_shop/models/cart.dart';
import 'package:grosery_shop/models/orders.dart';
import 'package:grosery_shop/screens/pdt_detail_screen.dart';
import 'package:flutter/material.dart';
import './screens/homepage.dart';
import 'package:provider/provider.dart';
import './models/products.dart';
import './models/cart.dart';
import './screens/cart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Products(),),
        ChangeNotifierProvider.value(value: Cart(),),
        ChangeNotifierProvider.value(value: Orders(),),
      ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
        title: 'Dresser',
        theme: ThemeData(
          primaryColor: Colors.teal,
          accentColor: Colors.white
        ),
        home: HomePage(),
        routes: {
          DetailPage.routeName: (ctx)=>DetailPage(),
          CartScreen.routeName: (ctx)=>CartScreen(),
        },
      ),
    );
  }
}