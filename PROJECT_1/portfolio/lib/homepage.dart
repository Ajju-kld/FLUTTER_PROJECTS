import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int _index=0;
static const List<Widget> pages = [
    Center(child: Text("hello")),
    Center(child: Text("you clicked next")),
    Center(child: Text("think it"))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(225, 46, 45, 45),
    bottomNavigationBar: FittedBox(fit: BoxFit.scaleDown,alignment: Alignment.center,
      child: FloatingNavbar(
          width: 500,
          onTap: (int val) {
            setState(() {
              _index=val;
            });
          },
          currentIndex: _index,
          items: [
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
            FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
          ],
        ),
    ),
    
    body: pages.elementAt(_index),);
  }
}