import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';
import '../../utilities/utilities.dart';
import 'favourites.dart';
import 'home.dart';

class DashboardView extends ConsumerWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageProvider);
    return Scaffold(
      body: IndexedStack(
        index: pageController.page,
        children: const [HomeView(), FavouritesView()],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageController.page,
          onTap: (value) {
            pageController.changePage(value);
          },
          backgroundColor: AppColors.bgColor,
          iconSize: 28,
          selectedFontSize: 16,
          selectedItemColor: AppColors.altPrimary,
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
