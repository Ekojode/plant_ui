import 'package:flutter/material.dart';

import '../../utilities/utilities.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SizedBox(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedFontSize: 16,
          selectedItemColor: AppColors.primaryColor,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",
                tooltip: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favourites",
                tooltip: "Favourites"),
          ]),
    );
  }
}
