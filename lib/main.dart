import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food/navigationBar/curved.dart';
import 'package:food/pages/chatPage.dart';
import 'package:food/pages/inChat.dart';
import 'package:food/pages/popularMenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.grey.shade300,
          color: Colors.grey.shade300,
          animationCurve: Curves.linear,
          animationDuration: const Duration(milliseconds: 500),
          items: const [
            Icon(Icons.home, size: 30, color: Colors.black),
            Icon(Icons.person, size: 30),
            Icon(Icons.shopping_cart, size: 30),
            Icon(Icons.chat_bubble_outline, size: 30),
          ],
          onTap: (index) {
            Curves.easeOut;
            setState(() {
              _pageIndex = index;
            });
          },
        ),
        body: IndexedStack(
          index: _pageIndex,
          children: const <Widget>[
            PopularMenu(),
            Placeholder(),
            Placeholder(),
            ChatPage(),
          ],
        ),
      ),
    );
  }
}
