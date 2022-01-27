import 'package:flutter/material.dart';
import 'package:flutter_pj/screens/profile.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> tabs = [
    const Text("Projects", style: TextStyle(fontSize: 20)),
    const Text("Reports", style: TextStyle(fontSize: 20)),
    const ProfileScreen(),
  ];

  Color _getIconColor(index) {
    return _selectedIndex == index
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).disabledColor;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(child: Center(child: tabs[_selectedIndex])),
        bottomNavigationBar: BottomNavigationBar(
          //iconSize: 28,
          //selectedFontSize: 16,
          //unselectedFontSize: 14,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/projects.svg",
                color: _getIconColor(0),
                height: 36,
                width: 36,
              ),
              label: "Projects",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/icons8-file.svg",
                color: _getIconColor(1),
              ),
              label: "Reports",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/icons8-user-male.svg",
                color: _getIconColor(2),
              ),
              label: "Profile",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
