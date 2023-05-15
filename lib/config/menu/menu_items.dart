import 'package:flutter/material.dart' show IconData, Icons;
import 'package:widgets_app/config/const/app_routes.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final String route;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.route,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subtitle: 'Varios botones flutter',
    icon: Icons.smart_button_outlined,
    route: AppRoutes.buttons,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Un contenedor estilizado',
    icon: Icons.credit_card_outlined,
    route: AppRoutes.cards,
  ),
  MenuItem(
    title: 'Progress indicators',
    subtitle: 'Generales y controlados',
    icon: Icons.refresh_rounded,
    route: AppRoutes.progress,
  ),
];
