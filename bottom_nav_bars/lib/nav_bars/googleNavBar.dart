import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleNavBar extends StatefulWidget {
  const GoogleNavBar({super.key});

  @override
  State<GoogleNavBar> createState() => _GoogleNavBarState();
}

class _GoogleNavBarState extends State<GoogleNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: GNav(
            onTabChange: (index){},
            activeColor: Colors.white,
            backgroundColor: Colors.black,
            color: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 5,
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(icon: Icons.home,text: 'Home',),
              GButton(icon: Icons.favorite_border,text: 'Likes',),
              GButton(icon: Icons.search,text: 'Search',),
              GButton(icon: Icons.person,text: 'Profile',),
            ],
          ),
        ),
      ),
    );
  }
}