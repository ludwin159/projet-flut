import 'package:flutter/material.dart';

import 'package:first_project/screens/screens.dart';
import 'package:first_project/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    // MenuOption(
    //   route: 'home',
    //   icon: Icons.home,
    //   nombre: 'Home Screen',
    //   screen: const HomeScreen()
    // ),
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt,
        nombre: 'List view tipo 1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.accessibility,
        nombre: 'List view tipo 2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert_outlined,
        nombre: 'Alerta de not fount',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.credit_card,
        nombre: 'Tarjetas - Cards',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle_outlined,
        nombre: 'Circle Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_circle_outline_outlined,
        nombre: 'Animations',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.input_rounded,
        nombre: 'Text Inputs',
        screen: const InputsScreen()),
    MenuOption(
        route: 'slider',
        icon: Icons.slow_motion_video_rounded,
        nombre: 'Slider and hecks',
        screen: const SliderScreen()),
        MenuOption(
        route: 'builder',
        icon: Icons.build_outlined,
        nombre: 'InfiniteScroll & pull to refresh',
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const Listview1Screen(),
  //   'listview2': (context) => const Listview2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final route = MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
    return route;
  }
}
