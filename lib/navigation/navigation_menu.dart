import 'package:apptest/pages/account/account_screen.dart';
import 'package:apptest/pages/favorite/favorite_screen.dart';
import 'package:apptest/pages/home/home_screen.dart';
import 'package:apptest/pages/order/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectIndex = 0;
  final List<Widget> _tabs = [
    const HomeScreen(),
    const OrderScreen(),
    const FavoriteScreen(),
    const AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: _selectIndex,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.pinkAccent,
          showUnselectedLabels: true,
          elevation: 10,
          selectedLabelStyle: const TextStyle(
            color: Colors.pink,
          ),
          selectedFontSize: 15,
          unselectedFontSize: 15,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Icon(Iconsax.home_2),
              ),
              label: 'Trang chủ',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Icon(Iconsax.box_time),
              ),
              label: 'Đơn hàng',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Icon(Iconsax.heart),
              ),
              label: 'Yêu thích',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Icon(Iconsax.user),
              ),
              label: 'Tài khoản',
            ),
          ],
          onTap: (value) {
            setState(() {
              _selectIndex = value;
            });
          },
        ),
      ),
    );
  }
}
