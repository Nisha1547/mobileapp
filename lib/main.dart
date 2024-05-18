// ignore_for_file: use_key_in_widget_constructors, unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, prefer_final_fields

import 'package:flutter/material.dart';
import 'discover_screen.dart';
import 'resource_library_screen.dart';
import 'login_page.dart';
import 'account_settings.dart'; // Import the file where AccountSettingsScreen is defined

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StudyBuddy App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      // Define routes for navigation
      routes: {
        '/home': (context) => HomeScreen(), // Home screen route
      },

      // Default route to navigate to if no matching route is found
      initialRoute: '/login',
      // Widget to build when navigating to a named route
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/login':
            return MaterialPageRoute(builder: (_) => LoginPage());
          // Add more routes here if needed
          default:
            // If route not found, navigate to login page
            return MaterialPageRoute(builder: (_) => LoginPage());
        }
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    DiscoverScreen(),
    ResourceLibraryScreen(),
    Placeholder(), // Notifications screen
    AccountSettingsScreen(), // Account settings screen
    Placeholder(), // Chat screen
    Placeholder(), // Taking class screen
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StudyBuddy App'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Resources',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.class_),
            label: 'Take Class',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }
}
