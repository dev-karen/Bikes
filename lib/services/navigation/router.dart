import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import 'package:bikes/screens/bikes/bikes_screen_v.dart';
import 'package:bikes/screens/details/details_screen_v.dart';
import 'package:bikes/screens/splash/splash_screen_v.dart';

export 'router.gr.dart';

abstract class Routes {
  static const splash = '/splash';
  static const bikes = '/bikes';
  static const bikeDetails = '/bike_details';
}

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
      path: Routes.splash,
      initial: true,
    ),
    AutoRoute(
      page: BikesScreen,
      path: Routes.bikes,
    ),
    AutoRoute(
      page: DetailsScreen,
      path: Routes.bikeDetails,
    ),
    RedirectRoute(path: '*', redirectTo: '/')
  ],
)
class $AppRouter {}
