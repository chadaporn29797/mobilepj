import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:myapppj/home.dart';

import 'Zodiac.dart';
import 'about.dart';
import 'Year.dart';

class BarNavy extends StatefulWidget {
  @override
  _BarNavyState createState() => _BarNavyState();
}
class _BarNavyState extends State<BarNavy> {

  int _currentIndex = 0;
  final List<Widget> _children = 
  [
    HomePage(),
    ZodiacPage(),
    YearPage(),
    AboutMePage()
  ];
  PageController _pageController;
  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Color(0xffffcc5c) ,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('Home'),
            activeColor: Colors.blue,
            icon: Icon(Icons.home)
          ),
          BottomNavyBarItem(
            title: Text('Zodiac'),
            activeColor: Colors.purpleAccent,
            icon: Icon(Icons.insert_invitation)
          ),
          BottomNavyBarItem(
            title: Text('Year'),
            icon: Icon(Icons.pets),
            activeColor: Colors.green
          ),
          BottomNavyBarItem(
            title: Text('Blood'),
            icon: Icon(Icons.invert_colors),
            activeColor: Colors.red
          ),
        ],
      ),
    );
  }
}