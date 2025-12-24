import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custom_item_2.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return CustomItem2();
      },
      itemCount: 15,
    );
  }
}
