import 'package:flutter/material.dart';

class MainBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const MainBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home),
          label: '홈',
        ),
        NavigationDestination(
          icon: Icon(Icons.map_outlined),
          selectedIcon: Icon(Icons.map),
          label: '지도',
        ),
        NavigationDestination(
          icon: Icon(Icons.calendar_today_outlined),
          selectedIcon: Icon(Icons.calendar_today),
          label: '예약',
        ),
        NavigationDestination(
          icon: Icon(Icons.directions_boat_outlined),
          selectedIcon: Icon(Icons.directions_boat),
          label: '기록',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_outline),
          selectedIcon: Icon(Icons.person),
          label: '마이',
        ),
      ],
    );
  }
}