import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/home/home.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectedIndex = 0;

  final screens = [
    HomeScreen(),
    const Scaffold(
      body: Center(
        child: Text("Explore"),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text("Add"),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text("Profile"),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: screens
            .asMap()
            .map((i, screen) => MapEntry(
                i,
                Offstage(
                  offstage: selectedIndex != i,
                  child: screen,
                )))
            .values
            .toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        onTap: (i) => setState(() => selectedIndex = i),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              label: 'Explore',
              activeIcon: Icon(Icons.explore)),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              label: 'Add',
              activeIcon: Icon(Icons.add_circle)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: 'Profile',
              activeIcon: Icon(Icons.person))
        ],
      ),
    );
  }
}
