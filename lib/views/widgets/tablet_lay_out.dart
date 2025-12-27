import 'package:flutter/material.dart';

import 'custom_list.dart';
import 'custom_list_view.dart';

class TabletLayOut extends StatelessWidget {
  const TabletLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        // SliverToBoxAdapter(
        //   child: LayoutBuilder(
        //     builder: (context, constrains) {
        //       if (constrains.maxWidth > 600) {
        //         return CustomList();
        //       } else {
        //         return CustomSliverGrid();
        //       }
        //     },
        //   ),
        // ),
        CustomList(),
        CustomSliverListView(),
      ],
    );
  }
}
