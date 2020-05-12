import 'package:flutter/material.dart';

import 'package:daily_1/src/widgets/bottom_nav_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:daily_1/src/widgets/category_card.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Saving size of the screen.
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          _topBackGround(size),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 9.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: _menuIcon(),
                  ),
                  _topTitle(context),
                  _searchInput(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 10.0,
                      children: <Widget>[
                        CategoryCard(
                          svgSrc: 'assets/icons/women.svg',
                          title: 'Meditation',
                          press: () {},
                        ),
                        CategoryCard(
                          svgSrc: 'assets/icons/women.svg',
                          title: 'Swimming',
                          press: () {},
                        ),
                        CategoryCard(
                          svgSrc: 'assets/icons/women.svg',
                          title: 'Swimming',
                          press: () {},
                        ),
                        CategoryCard(
                          svgSrc: 'assets/icons/women.svg',
                          title: 'Swimming',
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Widget _topBackGround(Size size) {
    return Container(
      //45% of the screen to the widget height
      height: size.height * .45,
      decoration: BoxDecoration(
        color: Color(0xFFF5CEB8),
        image: DecorationImage(
          alignment: Alignment.centerLeft,
          image: AssetImage('assets/images/undraw.png'),
        ),
      ),
    );
  }

  Widget _menuIcon() {
    return Container(
      alignment: Alignment.center,
      height: 52,
      width: 52,
      decoration: BoxDecoration(
        color: Color(0xFFF2BEA1),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset('assets/icons/menu.svg'),
    );
  }

  Widget _topTitle(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10.0),
        child: Text(
          'App Daily\nNo.1',
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(fontWeight: FontWeight.w900),
        ));
  }

  Widget _searchInput() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29.5),
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: SvgPicture.asset('assets/icons/search.svg'),
            hintText: 'Search'),
      ),
    );
  }
}
