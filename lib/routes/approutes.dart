import 'package:flcomponents/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  
  static final menuOptions = <MenuOption> [
    
    MenuOption(route: 'home', icon: Icons.home_max, name: 'Home Screen', screen:const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.numbers , name: 'List View 1', screen:const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.mail, name: 'List View 2', screen:const Listview2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert , name: 'Alert', screen:const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.card_giftcard , name: 'Card', screen:const CardScreen()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle_sharp, name: 'Circle Avatar', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_arrow_outlined , name: 'Animated Container', screen: const AnimatedScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};
      for(final options in menuOptions){
        appRoutes.addAll({ options.route : (BuildContext context ) => options.screen});
      }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };
  static Route<dynamic> onGenerateRoute (RouteSettings settings){
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
