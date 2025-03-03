import 'package:flutter/material.dart';

List<String> navTitle = [
  "Home",
  "Skills",
  "Projects",
  "Blog",
  "Contact",
];

List<IconData> navIcons = [
  Icons.home,
  Icons.android_outlined,
  Icons.back_hand,
  Icons.web,
  Icons.quick_contacts_mail,
];

List<NavItem> navItems = [
  NavItem(navTitle: "Home", navIcon: Icons.home),
  NavItem(navTitle: "Skills", navIcon: Icons.android_outlined),
  NavItem(navTitle: "Projects", navIcon: Icons.back_hand),
  NavItem(navTitle: "Blog", navIcon: Icons.web),
  NavItem(navTitle: "Contact", navIcon: Icons.quick_contacts_mail),

];


class NavItem {
  final String navTitle;
  final IconData navIcon;

  NavItem({required this.navIcon, required this.navTitle});
}