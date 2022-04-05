import 'package:flutter/material.dart';

import '../../../main.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: RootScreen.selectedIndexNotifier,
        builder: (BuildContext context, int updatedIndex, Widget? _) {
          return BottomNavigationBar(
            currentIndex: updatedIndex,
            iconSize: 30,
            onTap: (newIndex) {
              RootScreen.selectedIndexNotifier.value = newIndex;
            },
            selectedItemColor: Color(0xFF4CAF50),
            unselectedItemColor: Colors.grey[400],
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_rounded),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_rounded,
                ),
                label: 'Add',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Profile',
              ),
            ],
          );
        });
  }
}
