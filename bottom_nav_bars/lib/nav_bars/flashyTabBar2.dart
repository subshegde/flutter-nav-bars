import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

class Flashytabbar2 extends StatefulWidget {
  const Flashytabbar2({super.key});

  @override
  State<Flashytabbar2> createState() => _Flashytabbar2State();
}

class _Flashytabbar2State extends State<Flashytabbar2> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: FlashyTabBar(
        height: 55,
        backgroundColor: Colors.grey[700],
        selectedIndex: selectedIndex,
        animationCurve: Curves.linear,
        animationDuration: const Duration(milliseconds: 300),
        showElevation: false,
        onItemSelected: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        items: [ 
          FlashyTabBarItem(icon: const Icon(Icons.home,color: Colors.white,), title: const Text('Home',style: TextStyle(color: Colors.white),)),
          FlashyTabBarItem(icon: const Icon(Icons.favorite,color: Colors.white,), title: const Text('Likes',style: TextStyle(color: Colors.white),)),
          FlashyTabBarItem(icon: const Icon(Icons.person,color: Colors.white,), title: const Text('Profile',style: TextStyle(color: Colors.white),)),
          FlashyTabBarItem(icon: const Icon(Icons.settings,color: Colors.white,), title: const Text('Settings',style: TextStyle(color: Colors.white),)),
        ],
        
      ),
    );
  }
}