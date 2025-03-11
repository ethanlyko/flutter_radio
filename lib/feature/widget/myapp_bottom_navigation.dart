import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../common/app_style.dart';

class MyappBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTapped;
  const MyappBottomNavigationBar(
      {required this.currentIndex, required this.onTapped, super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppStyle.buttomNavigationBackgroundColor,
      selectedItemColor: Colors.amber.shade300.withOpacity(0.7),
      unselectedItemColor: Colors.grey.withOpacity(0.5),
      onTap: (index) => onTapped(index),
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: S.of(context).nav_home,
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.settings),
          label: S.of(context).nav_setting,
          tooltip: '',
        ),
      ],
    );
  }
}
