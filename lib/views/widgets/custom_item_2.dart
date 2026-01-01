import 'package:flutter/material.dart';

class CustomItem2 extends StatelessWidget {
  const CustomItem2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Color(0xffECECEC),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
