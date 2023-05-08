import 'package:agent/pages/Sales.dart';
import 'package:agent/pages/history.dart';
import 'package:agent/pages/homnw.dart';
import 'package:agent/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class HomePg extends StatefulWidget {
  const HomePg({Key? key}) : super(key: key);

  @override
  State<HomePg> createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> {
  int num =0;
  var padding = const EdgeInsets.symmetric(horizontal: 18, vertical: 5);
  double gap = 10;
  int _index = 0;
  final _pageData = [
    const homenw(),
    const sales(),
    const history(),
    const profile()
  ];
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView.builder(
          itemCount: 4,
          controller: controller,
          onPageChanged: (page) {
            setState(() {
              _index = page;
            });
          },
          itemBuilder: (context, positions) {
            return Container(
              child: _pageData[positions],
            );
          }),
// BOttom nav bar
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              color: Colors.white70,
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                  spreadRadius: -10,
                  blurRadius: 60,
                  color: Colors.black.withOpacity(0.4),
                  offset: const Offset(0, 25),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
              curve: Curves.fastOutSlowIn,
              duration: const Duration(milliseconds: 900),
              tabs: [
                GButton(
                  gap: gap,
                  icon: LineIcons.home,
                  iconColor: Colors.black,
                  iconActiveColor: Colors.green,
                  text: 'Home',
                  textColor: Colors.green,
                  backgroundColor: Colors.white.withOpacity(0.2),
                  iconSize: 24,
                  padding: padding,
                ),
                GButton(
                  gap: gap,
                  icon: LineIcons.book,
                  iconColor: Colors.black,
                  iconActiveColor: Colors.green,
                  text: 'Sales',
                  textColor: Colors.green,
                  backgroundColor: Colors.white.withOpacity(0.2),
                  iconSize: 24,
                  padding: padding,
                ),
                GButton(
                  gap: gap,
                  icon: LineIcons.history,
                  iconColor: Colors.black,
                  iconActiveColor: Colors.green,
                  text: 'History',
                  textColor: Colors.green,
                  backgroundColor: Colors.white.withOpacity(0.2),
                  iconSize: 24,
                  padding: padding,
                ),
                GButton(
                  gap: gap,
                  icon: LineIcons.user,
                  iconColor: Colors.black,
                  iconActiveColor: Colors.green,
                  text: 'Profile',
                  textColor: Colors.green,
                  backgroundColor: Colors.white.withOpacity(0.2),
                  iconSize: 24,
                  padding: padding,
                ),
              ],
              selectedIndex: _index,
              onTabChange: (index) {
                setState(() {
                  _index = index;
                });
                controller.jumpToPage(index);
              },
            ),
          ),
        ),
      ),
    );
  }
}
