import 'package:flutter/material.dart';
import 'package:test1/layout/home/Newspage.dart';
import 'package:test1/layout/home/PostNews.dart';
import 'package:test1/layout/home/hompagewithmenu.dart';
import 'MyHomePage.dart';
import 'ListViewLearning.dart';
import 'GridViewLearning.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}
  class _MainScreenState extends State<MainScreen> {
    int _currentIndex = 0;

    final List<Widget> _tabs = [
      Newspage(),
      //GridViewLearning(),
      //ListViewCards(),
      Postnews(),
      Center(child: Text('Home')),
      Center(child: Text('Post Data')),
      Center(child: Text('List View')),
      Center(child: Text('Grid View')),

    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: _tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: Colors.cyan,
          unselectedItemColor: Colors.redAccent,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: 'Grid View',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'List View',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.post_add),
              label: 'Post Data',
            ),
          ],
        ),
      );
    }
  }
