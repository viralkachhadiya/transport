import 'package:auto_route/auto_route.dart';
import 'package:transport/core/router/router_path.dart';
import 'package:transport/features/account/account.dart';
import 'package:transport/features/dashboard/dashboard.dart';
import 'package:transport/features/home/home.dart';
import 'package:transport/features/my_loads/my_loads.dart';

@CupertinoAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(
      path: RouterPath.home,
      page: DashboardPage,
      initial: true,
      children: [
        AutoRoute(path: RouterPath.home, page: HomePage),
        AutoRoute(path: RouterPath.myLoads, page: MyLoadsPage, initial: true),
        AutoRoute(path: RouterPath.account, page: AccountPage),
      ]),
  AutoRoute(path: RouterPath.orderDetails, page: OrderDetailsPage),
  AutoRoute(path: RouterPath.truckDetails, page: TruckDetailsPage),
])
class $AppRouter {}
