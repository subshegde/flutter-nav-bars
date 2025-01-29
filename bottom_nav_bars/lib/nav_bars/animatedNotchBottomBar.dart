import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';

class Animatednotchbottombar extends StatefulWidget {
  const Animatednotchbottombar({super.key});

  @override
  State<Animatednotchbottombar> createState() => _AnimatednotchbottombarState();
}

class _AnimatednotchbottombarState extends State<Animatednotchbottombar> {
  final NotchBottomBarController _notchBottomBarController = NotchBottomBarController(index: 0);

  @override   
  void dispose(){
    super.dispose();
    _notchBottomBarController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:
      AnimatedNotchBottomBar(
        notchBottomBarController: _notchBottomBarController,
        maxLine: 1,
        shadowElevation: 5,
        removeMargins: false,
        color: Colors.white,
        durationInMilliSeconds: 300,
      bottomBarItems: const [
        BottomBarItem(inActiveItem: Icon(Icons.home_filled,color: Colors.grey,), activeItem: Icon(Icons.home_filled),itemLabel: 'Home'),
        BottomBarItem(inActiveItem: Icon(Icons.person,color: Colors.grey,), activeItem: Icon(Icons.person),itemLabel: 'Profile'),
        BottomBarItem(inActiveItem: Icon(Icons.settings,color: Colors.grey,), activeItem: Icon(Icons.settings),itemLabel: 'Settings'),
      ], onTap: (index){
        setState(() {
          _notchBottomBarController.index = index;
        });
      }, kIconSize: 20, kBottomRadius: 20.0),
      
    );
  }
}
