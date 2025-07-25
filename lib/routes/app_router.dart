import 'package:atmospark_task/models/ground_model.dart';
import 'package:atmospark_task/routes/routes.dart';
import 'package:atmospark_task/views/ground_booking_view.dart';
import 'package:atmospark_task/views/ground_detail_view.dart';
import 'package:atmospark_task/views/home_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static final Map<String, WidgetBuilder> routes = {
    Routes.homeView: (context) => const HomeView(),
    Routes.groundDetailView: (context) => const GroundDetailView(),
    '${Routes.groundDetailView}${Routes.groundBookingView}': (context) {
      final ground = ModalRoute.of(context)!.settings.arguments as Ground;
      return GroundBookingView(ground: ground);
    },
  };
}
