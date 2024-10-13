import 'package:bid_ride/core/utils/app_colors.dart';
import 'package:bid_ride/features/favourite/presentation/pages/favorite_page.dart';
import 'package:bid_ride/features/home/presentation/pages/home_page.dart';
import 'package:bid_ride/features/profile/presentation/pages/profile_page.dart';
import 'package:bid_ride/features/user_bids/presentation/pages/bids_page.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const FavoritePage(),
    OrdersPage(),
    const BidsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.buttonTextColor,
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: AppColors.secondColor,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          _buildBottomNavItem(Icons.home_outlined, Icons.home, 'Home', 0),
          _buildBottomNavItem(Icons.favorite_outline, Icons.favorite, 'Favorites', 1),
          _buildBottomNavItem(Icons.list_alt_outlined, Icons.list_alt, 'Orders', 2),
          _buildBottomNavItem(Icons.shopping_bag_outlined, Icons.shopping_bag, 'Cart', 3),
          _buildBottomNavItem(Icons.person_outline, Icons.person, 'Profile', 4),
        ],
      ),
    );
  }
  BottomNavigationBarItem _buildBottomNavItem(IconData icon, IconData activeIcon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          Icon(icon),
          if (_currentIndex == index)
            Container(
              margin: const EdgeInsets.only(top: 4), // space between icon and line
              height: 3,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
        ],
      ),
      activeIcon: Column(
        children: [
          Icon(activeIcon),
          Container(
            margin: const EdgeInsets.only(top: 4), // space between icon and line
            height: 3,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      ),
      label: label,
    );
  }
}

// Dummy pages for each tab


class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Orders Page'));
  }

}
