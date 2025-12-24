import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffdbdbdb),
      child: Column(
        children: [DrawerHeader(child: Icon(Icons.favorite, size: 48))],
      ),
    );
  }
}
