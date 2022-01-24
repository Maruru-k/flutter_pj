import 'package:flutter/material.dart';
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
    const Text("Profile", style: TextStyle(fontSize: 20)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: tabs[_selectedIndex])),
      bottomNavigationBar: BottomNavigationBar(
        //iconSize: 28,
        //selectedFontSize: 16,
        //unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/projects.svg"),
            label: "Projects",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/report.svg"),
            label: "Reports",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/profile.svg"),
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
    );
  }
}
