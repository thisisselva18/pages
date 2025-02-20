import 'package:flutter/material.dart';
import 'package:notes/pages/home_page.dart';
import 'package:notes/pages/profile.dart';
import 'package:notes/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
//to keep track of the selected page
  int _selectedPage = 0;

//to update the new selected index
  void _navigatorBottomBar(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  //Our list of pages
  final List _pages = [
    //homepage
    HomePage(),
    //Profile
    Profile(),
    //Settings Page
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        centerTitle: true,
        title: Text('1st Page'),
      ),
      body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: _navigatorBottomBar,
        items: [
          //Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          //Profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          //Settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 100,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('H O M E'),
              onTap: () {
                Navigator.pop(context);
                Navigator.popAndPushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G S'),
              onTap: () {
                Navigator.pop(context);
                Navigator.popAndPushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
    );
  }
}
