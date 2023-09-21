import 'package:flutter/material.dart';
import '../screens/screens.dart';

import '../models/menu_options.dart';

class AppRoutes {
  static const initialROute = 'home';

  static final menuOptions = <MenuOption>[
    /* MenuOption(
        route: 'home',
        icon: Icons.account_balance_outlined,
        name: 'Home Screen',
        screen: const HomeScreen()),*/
    MenuOption(
        route: 'listview1',
        icon: Icons.account_circle_rounded,
        name: 'Profile',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.add_to_photos_outlined,
        name: 'Add',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'Alertas',
        icon: Icons.woo_commerce,
        name: ' ¡Alert!',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.add_photo_alternate_outlined,
        name: 'Cards',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.add_reaction_sharp,
        name: 'Circle avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_circle_outline,
        name: 'Animated container',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.input_rounded,
        name: 'Text inputs',
        screen: const InputsScreen()),
    MenuOption(
        route: 'Slider',
        icon: Icons.slideshow_sharp,
        name: 'Slider Screen',
        screen: const SliderScreen()),
    MenuOption(
        route: 'listviewBuilder',
        icon: Icons.build_circle_rounded,
        name: 'InfiniteScroll & pull to refresh',
        screen: const ListViewBuilderScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
