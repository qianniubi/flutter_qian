import 'package:flutter/material.dart';
class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  void onTapHandler (int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          onTap: onTapHandler,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed, 
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('explore')
            ), 
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('history')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('list')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('my')
            ),
          ],
        );
  }
}