import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBarViewMobile extends StatelessWidget {
  final SidebarXController controller;

  SideBarViewMobile({
    required this.controller,
  });
  closeDrawer(BuildContext context) {
    if (MediaQuery.of(context).size.width < 1200 &&
        Scaffold.of(context).isDrawerOpen) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      extendedTheme: const SidebarXTheme(
        width: 150,
      ),
      // showToggleButton: true,
      headerBuilder: (context, value) {
        return SafeArea(
          child: Image.asset('assets/images/logo.png',
              width: MediaQuery.of(context).size.width * .2),
        );
      },
      controller: controller,
      theme: SidebarXTheme(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        textStyle: const TextStyle(color: Colors.black),
        selectedItemDecoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        iconTheme: const IconThemeData(color: Colors.black54),
        selectedIconTheme: IconThemeData(color: Colors.deepPurple[300]),
      ),
      items: [
        SidebarXItem(
          icon: Icons.dashboard_outlined,
          label: 'Dashboard',
          onTap: () {
            closeDrawer(context);
          },
        ),
        SidebarXItem(
          icon: Icons.wallet_outlined,
          label: 'Carteira',
          onTap: () {
            closeDrawer(context);
          },
        ),
        SidebarXItem(
          icon: Icons.shopping_cart_outlined,
          label: 'Transações',
          onTap: () {
            closeDrawer(context);
          },
        ),
        SidebarXItem(
          icon: Icons.people_alt_outlined,
          label: 'Suporte',
          onTap: () {
            closeDrawer(context);
          },
        ),
      ],
      footerItems: [
        SidebarXItem(
          icon: Icons.settings_outlined,
          label: 'Ajustes',
          onTap: () {
            closeDrawer(context);
          },
        ),
        SidebarXItem(
          icon: Icons.power_settings_new_outlined,
          label: 'Desconectar',
          onTap: () {
            closeDrawer(context);
          },
        ),
      ],
    );
  }
}
