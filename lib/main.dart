import 'package:flutter/material.dart';
import 'utils/ui.dart';
import 'utils/routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery Store',
      theme: ThemeData(    
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        Routes.welcomeRoute:(context) => WelcomeScreen(),
        Routes.homeRoute:(context) => HomeScreen(),
        Routes.cartRoute:(context) => CartScreen(),
        Routes.categoriesRoute:(context) => AllCategoriesScreen(),
        '/products': (context) => AllProductsScreen(),
        '/categories': (context) => AllCategoriesScreen(),
        '/home': (context) => HomeScreen(),


      },
      
    );
  }
}

