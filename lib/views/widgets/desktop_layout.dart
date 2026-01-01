import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custom_drawer.dart';
import 'package:responsive_ui/views/widgets/tablet_lay_out.dart';

import 'custom_desktop_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(flex: 3, child: TabletLayOut()),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: CustomDesktopWidget(),
          ),
        ),
      ],
    );
  }
}
