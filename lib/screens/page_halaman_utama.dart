import 'package:dunia_anime/screens/page_discover_screen.dart';
import 'package:dunia_anime/screens/page_download_screen.dart';
import 'package:dunia_anime/screens/page_home_screen.dart';
import 'package:dunia_anime/screens/page_mylist_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  State<HalamanUtama> createState() => _HalamanUtama();
}

class _HalamanUtama extends State<HalamanUtama> {
  int _currentIndex = 0;
  // Daftar halaman yang dipilih ketika klik tombol navigasi
  final List<Widget> _pages = [
    PageHomeScreen(),
    PageDiscoverScreen(),
    PageMylistScreen(),
    PageDownloadScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: SafeArea(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              padding: EdgeInsets.all(18),
              gap: 2,
              selectedIndex: _currentIndex,
              onTabChange: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  textStyle: TextStyle(
                    fontFamily: 'SFPro', color: Colors.white,
                  ),
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Discover',
                  textStyle: TextStyle(fontFamily: 'SFPro', color: Colors.white),
                ),
                GButton(
                  icon: Icons.add,
                  text: 'My list',
                  textStyle: TextStyle(fontFamily: 'SFPro', color: Colors.white),
                ),
                GButton(
                  icon: Icons.download_done,
                  text: 'Unduh',
                  textStyle: TextStyle(fontFamily: 'SFPro', color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
      body: _pages[_currentIndex],
    );
  }
}
