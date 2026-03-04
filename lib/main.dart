import 'package:demo_app_2/pages/add_new_page.dart';
import 'package:demo_app_2/pages/favourite_page.dart';
import 'package:demo_app_2/pages/home_page.dart';
import 'package:demo_app_2/pages/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentNavigationBarIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    AddNewPage(),
    FavouritePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App 1",
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("Flutter App 1"),
        //   toolbarHeight: 30,
        //   backgroundColor: Colors.blue,
        // ),
        body: _pages[currentNavigationBarIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 16,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(size: 30),
          unselectedIconTheme: IconThemeData(size: 28),
          currentIndex: currentNavigationBarIndex,
          onTap: (index) {
            setState(() {
              currentNavigationBarIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add New"),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favourite",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
