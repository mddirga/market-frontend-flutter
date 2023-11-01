import 'package:flutter/material.dart';
import 'package:market/shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/images/icon_cart.png',
          width: 20,
        ),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: backgroundColor3,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_home.png',
                  width: 20,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_chat.png',
                  width: 20,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_home.png',
                  width: 20,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_profile.png',
                  width: 20,
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: Center(
        child: Text('Main Page'),
      ),
    );
  }
}
