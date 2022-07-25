import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('my tickets')),
      body: Center(child: Text('data')),
      bottomNavigationBar: BottomNavigationBar(showSelectedLabels: false,showUnselectedLabels: false
          ,selectedItemColor: ,items: [
        BottomNavigationBarItem(,icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
        BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: 'ticket'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
      ]),
    );
  }
}
