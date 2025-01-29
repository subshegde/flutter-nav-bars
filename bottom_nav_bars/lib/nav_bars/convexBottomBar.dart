import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Convexbottombar extends StatefulWidget {
  const Convexbottombar({super.key});

  @override
  State<Convexbottombar> createState() => _ConvexbottombarState();
}

class _ConvexbottombarState extends State<Convexbottombar> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: ConvexAppBar(
        activeColor: Colors.white,
        initialActiveIndex: activeIndex,
        backgroundColor: Colors.orange,
        items: 
      const [
        TabItem(icon: Icon(Icons.home)),
        TabItem(icon: Icon(Icons.chat)),
        TabItem(icon: Icon(Icons.dialer_sip)),
      ],
      onTap: (index){},
      onTabNotify: (index){return true;},
      ),
    );
  }
}

// Use onTap if you want to handle actions like changing the screen, updating state, or triggering navigation when a tab is tapped.
// Use onTabNotify if you need to perform some background operation (like logging or analytics) when the tab is tapped and you also want to control whether the tab change should occur.