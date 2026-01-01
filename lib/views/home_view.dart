import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custom_drawer.dart';
import 'package:responsive_ui/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffDBDBDB),
      appBar: buildAppBar(context),
      body: const HomeViewBody(),
    );
  }

  AppBar? buildAppBar(BuildContext context) {
    return MediaQuery.sizeOf(context).width < 900
        ? AppBar(
            backgroundColor: Colors.black,
            leading: GestureDetector(
              onTap: scaffoldKey.currentState!.openDrawer,
              child: const Icon(Icons.menu, color: Colors.white),
            ),
          )
        : null;
  }
}

//
// class CustomAdaptiveAppBar extends StatelessWidget
//     implements PreferredSizeWidget {
//   final VoidCallback onMenuTap;
//
//   const CustomAdaptiveAppBar({super.key, required this.onMenuTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         if (constraints.maxWidth < 900) {
//           return AppBar(
//             backgroundColor: Colors.black,
//             leading: GestureDetector(
//               onTap: onMenuTap,
//               child: const Icon(Icons.menu, color: Colors.white),
//             ),
//           );
//         } else {
//           return SizedBox();
//         }
//       },
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(56);
// }
