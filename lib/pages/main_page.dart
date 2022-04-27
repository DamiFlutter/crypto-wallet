import 'package:events/pages/homepage.dart';
import 'package:events/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_providers.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  final PageController _pageController = PageController();
  int selectedIndex = 0;

  List pages = [
    const HomePage(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return pages[index];
        },
        itemCount: pages.length,
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: ((value) {
            _pageController.animateToPage(value,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut);
          }),
          type: BottomNavigationBarType.fixed,
          selectedItemColor:
              Provider.of<AppProvider>(context).theme == ThemeConfig.lightThme
                  ? MyColors.mainBlueDark
                  : Colors.white,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.assessment_outlined), label: 'Chart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card), label: 'Assets'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notification_add), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
