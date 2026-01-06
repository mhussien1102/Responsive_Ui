import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/desktop_layout.dart';
import 'package:responsive_ui/views/widgets/mobile_layout.dart';
import 'package:responsive_ui/views/widgets/tablet_lay_out.dart';
import 'adaptive_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AdaptiveLayout(
        mobileLayout: (context) => MobileLayOut(),
        tabletLayout: (context) => TabletLayOut(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
