import 'package:finance_app/src/presentation/ui/desktop_view.dart';
import 'package:finance_app/src/presentation/ui/mobile_view.dart';
import 'package:finance_app/src/presentation/ui/tablet_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sidebarx/sidebarx.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SidebarXController _controller =
        SidebarXController(selectedIndex: 0, extended: true);
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileView(
        controller: _controller,
      ),
      tablet: (context) => const TabletView(),
      desktop: (context) => const DesktopView(),
    );
  }
}
