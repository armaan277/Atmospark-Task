import 'package:atmospark_task/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroundBookingApp extends StatelessWidget {
  const GroundBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ground Booking App',
      debugShowCheckedModeBanner: false,
      home: HomeView(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF2E7D32)),
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
