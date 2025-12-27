import 'package:flutter/material.dart';
import 'package:responsive_ui/models/drawer_item_model.dart';

import 'custom_drawer_item.dart';
import 'custom_drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static final List<DrawerItemModel> items = [
    DrawerItemModel(icon: Icons.home, txt: 'D A S H B O A R D'),
    DrawerItemModel(icon: Icons.favorite, txt: 'F A V O R I T E'),
    DrawerItemModel(icon: Icons.info, txt: 'A B O U T'),
    DrawerItemModel(icon: Icons.logout, txt: 'L O G O U T'),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffdbdbdb),
      elevation: 0,
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.favorite, size: 48)),
          CustomDrawerItemsListView(items: items),
        ],
      ),
    );
  }
}
