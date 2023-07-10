import "package:flutter/material.dart";
import "package:yumyumgo/src/colors/colors.dart";

// Tabs
import 'package:yumyumgo/src/features/presentation/tabs/explore_tab/view/explore_tab.dart';
import 'package:yumyumgo/src/features/presentation/tabs/favourite_tab/view/favourite_tab.dart';
import 'package:yumyumgo/src/features/presentation/tabs/my_order_tab/view/my_order_tab.dart';
import 'package:yumyumgo/src/features/presentation/tabs/profile_tab/view/profile_tab.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  List<Widget> _widgetOptions = [
    ExploreTab(),
    MyOrderTab(),
    FavouriteTab(),
    ProfileTab()
  ];

  int _selectedItemIndex = 0;

  void _changeWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30.0,
        selectedItemColor: purple,
        unselectedItemColor: darkGrey,
        currentIndex: _selectedItemIndex,
        onTap: _changeWidget,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: 'My order'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'Profile')
        ]);
  }
}
