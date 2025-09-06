// app_data.dart
import 'package:flutter/material.dart';

class NavItem {
  final String title;
  final IconData inactiveIcon;
  final IconData activeIcon;
  final Color inactiveColor;
  final Color activeColor;

  const NavItem({
    required this.title,
    required this.inactiveIcon,
    required this.activeIcon,
    required this.inactiveColor,
    required this.activeColor,
  });
}

class AppData {
  static const List<NavItem> navItems = [
    NavItem(
      title: 'Products',
      inactiveIcon: Icons.view_list_outlined,
      activeIcon: Icons.view_list,
      inactiveColor: Colors.grey,
      activeColor: Colors.blue,
    ),
    NavItem(
      title: 'Favorites',
      inactiveIcon: Icons.favorite_outline,
      activeIcon: Icons.favorite,
      inactiveColor: Colors.grey,
      activeColor: Colors.red,
    ),
    NavItem(
      title: 'Cart',
      inactiveIcon: Icons.shopping_cart_outlined,
      activeIcon: Icons.shopping_cart,
      inactiveColor: Colors.grey,
      activeColor: Colors.green,
    ),
    NavItem(
      title: 'Profile',
      inactiveIcon: Icons.person_outline,
      activeIcon: Icons.person,
      inactiveColor: Colors.grey,
      activeColor: Colors.purple,
    ),
  ];
}
