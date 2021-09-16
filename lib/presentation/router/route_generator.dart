import 'package:flutter/material.dart';
import 'package:masters/models/gst_details.dart';
import 'package:masters/presentation/screens/gst_details/gst_details_page.dart';
import 'package:masters/presentation/screens/home/home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/gstDetails':
        if (args is GstDetails) {
          return MaterialPageRoute(
            builder: (_) => GstDetailsPage(
              args,
            ),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

/*

{
  '/': const HomePage(),
  '/gstDetails': (context) => const GstDetailsPage(),
}

*/