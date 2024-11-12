import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBarViewMobile extends StatelessWidget {
  final SidebarXController controller;

  SideBarViewMobile({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      showToggleButton: false,
      headerBuilder: (context, value) {
        return SafeArea(
          child: Image.asset('assets/images/logo.png',
              width: MediaQuery.of(context).size.width * .2),
        );
      },
      controller: controller,
      theme: SidebarXTheme(
        width: MediaQuery.of(context).size.width * .4,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        textStyle: const TextStyle(color: Colors.black),
        selectedItemDecoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        iconTheme: const IconThemeData(color: Colors.black54),
        selectedIconTheme: IconThemeData(color: Colors.deepPurple[300]),
      ),
      items: const [
        SidebarXItem(icon: Icons.dashboard_outlined, label: 'Dashboard'),
        SidebarXItem(icon: Icons.wallet_outlined, label: 'Carteira'),
        SidebarXItem(icon: Icons.shopping_cart_outlined, label: 'Transações'),
        SidebarXItem(icon: Icons.people_alt_outlined, label: 'Suporte'),
      ],
      footerItems: const [
        SidebarXItem(icon: Icons.settings_outlined, label: 'Ajustes'),
        SidebarXItem(
            icon: Icons.power_settings_new_outlined, label: 'Desconectar'),
      ],
    );
  }
}
