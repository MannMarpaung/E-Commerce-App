import 'package:e_commerce_app/pages/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MainPage(),
        debugShowCheckedModeBanner: false,
        routes: {
          '/home': (context) => HomePage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/main': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
        });
  }
}
