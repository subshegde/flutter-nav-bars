import 'package:cool_nav/cool_nav.dart';
import 'package:flutter/material.dart';

class CoolnavFlipbox extends StatefulWidget {
  const CoolnavFlipbox({super.key});

  @override
  State<CoolnavFlipbox> createState() => _CoolnavFlipboxState();
}

class _CoolnavFlipboxState extends State<CoolnavFlipbox> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: FlipBoxNavigationBar(
        selectedItemTheme: const IconThemeData(size: 24.0, color: Colors.white),

        currentIndex: currentIndex,
        onTap: (index){
          setState(() => currentIndex = index);
        },
        items: [
          FlipBoxNavigationBarItem(
            name: 'Home', 
            selectedIcon: Icons.home,
            selectedBackgroundColor: Colors.orange,
            unselectedBackgroundColor: const Color.fromARGB(255, 203, 203, 203)           
             ),
          FlipBoxNavigationBarItem(
            name: 'Tasks', 
            selectedIcon: Icons.done_all,
            selectedBackgroundColor: Colors.orange,
            unselectedBackgroundColor: const Color.fromARGB(255, 203, 203, 203)
            ),
          FlipBoxNavigationBarItem(
            name: 'Mail', 
            selectedIcon: Icons.mail,
            selectedBackgroundColor: Colors.orange,
            unselectedBackgroundColor: const Color.fromARGB(255, 203, 203, 203)
            ),
        ]
      ),
    );
  }
}