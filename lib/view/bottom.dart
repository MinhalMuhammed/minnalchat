import 'package:flutter/material.dart';
import 'package:minnal_chat/view/home.dart';
import 'package:minnal_chat/view/profile.dart';

class NavBarbottom extends StatefulWidget {
  const NavBarbottom({super.key});

  @override
  State<NavBarbottom> createState() => _NavBarbottomState();
}

int _currentIndex = 0;
List<Widget> page = [HomePage(),ProfilePage()];

class _NavBarbottomState extends State<NavBarbottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.teal[400],
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = (value);
              // print(_currentIndex);
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ]),
          body: page[_currentIndex],
    );
  }
}
