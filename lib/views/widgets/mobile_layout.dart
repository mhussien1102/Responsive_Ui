import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custom_sliver_grid.dart';

import 'custom_list_view.dart';

class MobileLayOut extends StatelessWidget {
  const MobileLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        CustomSliverGrid(),
        CustomSliverListView(),
      ],
    );
  }
}
