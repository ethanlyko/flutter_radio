import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../feature/about/presentation/about_page.dart';
import '../radio/presentation/page/radio_page.dart';
import '../setting/presentation/setting_page.dart';
import '../widget/myapp_bottom_navigation.dart';

abstract class RouterPath {
  static const String routeNavigationHome = "/home";
  static const String routeNavigationSetting = "/setting";

  static const String routeAbout = "/about";
}

final appRouter = GoRouter(
  initialLocation: RouterPath.routeNavigationHome,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: MyappBottomNavigationBar(
            currentIndex: _calcCurrentIndex(state.fullPath),
            onTapped: (index) {
              switch (index) {
                case 0:
                  if (state.fullPath != RouterPath.routeNavigationHome) {
                    context.go(RouterPath.routeNavigationHome);
                  }
                  break;
                case 1:
                  if (state.fullPath != RouterPath.routeNavigationSetting) {
                    context.go(RouterPath.routeNavigationSetting);
                  }
                  break;
              }
            },
          ),
        );
      },
      routes: [
        GoRoute(
          path: RouterPath.routeNavigationHome,
          builder: (context, state) => RadioPage(key: state.pageKey),
        ),
        GoRoute(
          path: RouterPath.routeNavigationSetting,
          builder: (context, state) => SettingPage(key: state.pageKey),
        ),
      ],
    ),
    GoRoute(
      path: RouterPath.routeAbout,
      builder: (context, state) => AboutPage(key: state.pageKey),
    ),
  ],
);

_calcCurrentIndex(String? fullPath) {
  switch (fullPath) {
    case RouterPath.routeNavigationSetting:
      return 1;

    case RouterPath.routeNavigationHome:
    default:
      return 0;
  }
}
