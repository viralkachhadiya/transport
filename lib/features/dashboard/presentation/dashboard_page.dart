import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:transport/core/constants/color_constant.dart';
import 'package:transport/core/constants/string_constant.dart';
import 'package:transport/core/router/route_management.gr.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.kBackgroundColor,
      routes: const [HomeRoute(), MyLoadsRoute(), AccountRoute()],
      bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        backgroundColor: ColorConstant.kBottomTabBarColor,
        onTap: (value) {
          tabsRouter.setActiveIndex(value);
        },
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: StringConstant.home),
          BottomNavigationBarItem(
              icon: Icon(Icons.fire_truck), label: StringConstant.myLoads),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: StringConstant.account)
        ],
      ),
    );
  }
}
