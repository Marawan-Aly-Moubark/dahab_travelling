import 'package:flutter/material.dart';
import 'package:maps_first/presentation/screens/hotels_screen.dart';
import 'package:maps_first/presentation/screens/trip_details_screen.dart';
import 'constants/strings.dart';
import 'presentation/screens/home_screen.dart';

class AppRouter {
  Route? genertaRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case detailsScreen:
        final data = settings.arguments;
        return MaterialPageRoute(
          builder: (context) => ProductDetailsScreen(
            data: data,
          ),
        );
      case hotelsScreen:
        return MaterialPageRoute(
          builder: (context) => HotelsScreen(),
        );
    }
    return null;
  }
}
