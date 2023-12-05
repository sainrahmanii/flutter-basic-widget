import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationBottom extends StatefulWidget {
  const NavigationBottom({Key ? key}) : super(key: key);

  @override
  State<NavigationBottom> createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {

  final List<Widget> list = const [
    Text('Home'),
    Text('Cart'),
    Text('Champion'),
    Text('Favorite'),
    Text('User'),
  ];

  int _selectedIndex = 0;
  List<dynamic> menuItems = [
    {
      'icon': 'assets/icon/home.svg',
      'label': 'Home',
    },
    {
      'icon': 'assets/icon/cart.svg',
      'label': 'Cart',
    },
    {
      'icon': 'assets/icon/cup.svg',
      'label': 'Champion',
    },
    {
      'icon': 'assets/icon/favorite.svg',
      'label': 'Favorite',
    },
    {
      'icon': 'assets/icon/user.svg',
      'label': 'Profile',
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        leading: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,),
        title: const Text("FIC - Bottom Navbar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
        actions: const [],
      ),
      body: Center(
        child: list[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black87,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        items: menuItems.map((i) {
          return BottomNavigationBarItem(
            activeIcon: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              child: SvgPicture.asset(
                i['icon'],
                color: Colors.white,
              ),
            ),
            icon: SvgPicture.asset(
              i['icon'],
              color: Colors.grey,
            ),
            label: i['label'],
          );
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}