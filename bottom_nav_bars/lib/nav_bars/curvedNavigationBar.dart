import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Curvednavigationbar extends StatefulWidget {
  const Curvednavigationbar({super.key});

  @override
  State<Curvednavigationbar> createState() => _CurvednavigationbarState();
}

class _CurvednavigationbarState extends State<Curvednavigationbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: CurvedNavigationBar(
      backgroundColor: Colors.grey,
      color: Colors.grey[200]!,
      animationDuration: const Duration(milliseconds: 300),
      onTap: (index){},
      items: const [
        Icon(Icons.home),
        Icon(Icons.favorite),
        Icon(Icons.settings),
      ],
     ),
    );
  }
}