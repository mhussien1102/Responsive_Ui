import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custpm_item.dart';

import 'custom_item_2.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CustomItem()),
        Expanded(child: CustomItem2()),
      ],
    );
  }
}
