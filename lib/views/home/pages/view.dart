import 'package:cosmetics_app/views/core/components/app_image.dart';
import 'package:cosmetics_app/views/home/pages/categories.dart';
import 'package:cosmetics_app/views/home/pages/home.dart';
import 'package:cosmetics_app/views/home/pages/my_cart.dart';
import 'package:cosmetics_app/views/home/pages/profile.dart';
import 'package:cosmetics_app/views/home/pages/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final list = [
    _Model(icon: 'home.svg', page: HomeView()),
    _Model(icon: 'categories.svg', page: CategoriesView()),
    _Model(icon: 'cart.svg', page: MyCartView()),
    _Model(icon: 'profile.svg', page: ProfileView()),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[currentIndex].page,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 4,
              spreadRadius: 0,
              blurStyle: BlurStyle.outer,
              color: Colors.black.withValues(alpha: .1),
            ),
            BoxShadow(
              offset: Offset(-4, 4),
              blurRadius: 6,
              spreadRadius: 0,
              blurStyle: BlurStyle.outer,
              color: Colors.black.withValues(alpha: .1),
            ),
          ],
        ),
        margin: EdgeInsets.symmetric(horizontal: 13),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) => {
            setState(() {
              currentIndex = value;
            }),
          },
          selectedFontSize: 0,
          unselectedFontSize: 0,
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: List.generate(
            list.length,
            (index) => BottomNavigationBarItem(
              icon: AppImage(image: list[index].icon, color:  currentIndex == index ? Color(0xffDA498C) : null,)
              
              
            ,
              label: '',
            ),
          ),
        ),
      ),
    );
  }
}

class _Model {
  final String icon;
  final Widget page;

  _Model({required this.icon, required this.page});
}
