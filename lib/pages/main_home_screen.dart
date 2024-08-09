import 'package:flutter/material.dart';
import 'package:icmr/pages/HomePage/home_page.dart';
import 'package:icmr/utils/custom_app_bar.dart';
import 'package:icmr/utils/custom_nav_bar.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int selectedIndex = 0;
  List<Widget> screens = [
    const HomePage(),
    const Text("About Project"),
    const Text("Project"),
    const Text("reasearch Team"),
    const Text("what's new"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomNavBar(
              selectedIndex: selectedIndex,
              onTap: (int index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
            Expanded(child: screens[selectedIndex]),
          ],
        ),
      ),
    );
  }
}
