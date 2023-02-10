// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../features/account/account.dart' as _i4;
import '../../features/dashboard/dashboard.dart' as _i1;
import '../../features/home/home.dart' as _i3;
import '../../features/my_loads/my_loads.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    OrderDetailsRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.OrderDetailsPage(),
      );
    },
    TruckDetailsRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.TruckDetailsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    MyLoadsRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MyLoadsPage(),
      );
    },
    AccountRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AccountPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'home',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          DashboardRoute.name,
          path: 'home',
          children: [
            _i5.RouteConfig(
              '#redirect',
              path: '',
              parent: DashboardRoute.name,
              redirectTo: 'my-loads',
              fullMatch: true,
            ),
            _i5.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: DashboardRoute.name,
            ),
            _i5.RouteConfig(
              MyLoadsRoute.name,
              path: 'my-loads',
              parent: DashboardRoute.name,
            ),
            _i5.RouteConfig(
              AccountRoute.name,
              path: 'account',
              parent: DashboardRoute.name,
            ),
          ],
        ),
        _i5.RouteConfig(
          OrderDetailsRoute.name,
          path: '/order-details',
        ),
        _i5.RouteConfig(
          TruckDetailsRoute.name,
          path: '/truck-details',
        ),
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i2.OrderDetailsPage]
class OrderDetailsRoute extends _i5.PageRouteInfo<void> {
  const OrderDetailsRoute()
      : super(
          OrderDetailsRoute.name,
          path: '/order-details',
        );

  static const String name = 'OrderDetailsRoute';
}

/// generated route for
/// [_i2.TruckDetailsPage]
class TruckDetailsRoute extends _i5.PageRouteInfo<void> {
  const TruckDetailsRoute()
      : super(
          TruckDetailsRoute.name,
          path: '/truck-details',
        );

  static const String name = 'TruckDetailsRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.MyLoadsPage]
class MyLoadsRoute extends _i5.PageRouteInfo<void> {
  const MyLoadsRoute()
      : super(
          MyLoadsRoute.name,
          path: 'my-loads',
        );

  static const String name = 'MyLoadsRoute';
}

/// generated route for
/// [_i4.AccountPage]
class AccountRoute extends _i5.PageRouteInfo<void> {
  const AccountRoute()
      : super(
          AccountRoute.name,
          path: 'account',
        );

  static const String name = 'AccountRoute';
}
