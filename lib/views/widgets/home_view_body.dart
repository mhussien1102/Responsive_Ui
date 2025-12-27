import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/desktop_layout.dart';
import 'package:responsive_ui/views/widgets/tablet_lay_out.dart';
import 'mobile_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(
        builder: (context, constrains) {
          if (constrains.maxWidth > 900) {
            return DesktopLayout();
          } else if (constrains.maxWidth > 600 && constrains.maxWidth < 900) {
            return TabletLayOut();
          } else {
            return MobileLayOut();
          }
        },
      ),
    );
  }
}
