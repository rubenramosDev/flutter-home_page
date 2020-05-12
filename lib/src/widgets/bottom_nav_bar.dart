import 'package:flutter/material.dart';

import 'bottom_nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      height: 80.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            svgSrc: 'assets/icons/calendar.svg',
            title: 'Today',
            press: () {},
          ),
          BottomNavItem(
            svgSrc: 'assets/icons/gym.svg',
            title: 'Gym',
            isActive: false,
            press: () {
            },
          ),
          BottomNavItem(
            svgSrc: 'assets/icons/Settings.svg',
            title: 'Settings',
            isActive: true,
            press: () {},
          ),
        ],
      ),
    );
  }
}
