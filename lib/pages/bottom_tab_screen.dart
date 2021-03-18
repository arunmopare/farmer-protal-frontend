import '../constants/constant_string.dart';
import '../pages/account_screen.dart';
import '../pages/add_product_screen.dart';
import '../pages/home_screen.dart';
import '../pages/notification_screen.dart';
import '../pages/store_screen.dart';
import 'package:flutter/material.dart';

class BottomTabScreen extends StatefulWidget {
  // BottomTabScreen({Key key}) : super(key: key);

  @override
  _BottomTabScreenState createState() =>
      _BottomTabScreenState();
}

class _BottomTabScreenState extends State<BottomTabScreen> {
  List<Map<String, Object>> _pages;

  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': HomeScreen(),
        'title': HOME_SCREEN_TITLE,
      },
      {
        'page': StoreScreen(),
        'title': STORE_SCREEN_TITLE,
      },
      {
        'page': AddProductScreen(),
        'title': ADD_PRODUCT_SCREEN_TITLE,
      },
      {
        'page': NotificationScreen(),
        'title': NOTIFICATION_SCREEN_TITLE,
      },
      {
        'page': AccountScreen(),
        'title': ACCOUNT_SCREEN_TITLE,
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _selectPage,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _selectedPageIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: HOME_SCREEN_TITLE,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_rounded),
            label: STORE_SCREEN_TITLE,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_rounded),
            label: ADD_PRODUCT_SCREEN_TITLE,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: NOTIFICATION_SCREEN_TITLE,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ACCOUNT_SCREEN_TITLE,
          ),
        ],
      ),
    );
  }
}
