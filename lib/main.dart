import 'package:book_doctor_appointment_app/screens/auth_page.dart';
import 'package:book_doctor_appointment_app/screens/booking_page.dart';
import 'package:book_doctor_appointment_app/screens/doctor_details.dart';
import 'package:book_doctor_appointment_app/screens/success_booked.dart';
import 'package:book_doctor_appointment_app/utils/config.dart';
import 'package:book_doctor_appointment_app/utils/main_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    // definisi ThemeData
    return MaterialApp(
      title: 'Flutter Doctor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Define input decoration
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primaryColor,
          border: Config.focusBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.outlinedBorder,
          floatingLabelStyle: TextStyle(
            color: Config.primaryColor,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primaryColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      initialRoute: '/',
      routes: {
        // ini adalah initial route app
        // authentication page login dan register
        '/': (context) => const AuthPage(),

        // main layout after login
        'main': (context) => const MainLayout(),
        'doc_details': (context) => const DoctorDetails(),
        'booking_page': (context) => BookingPage(),
        'success_booking': (context) => const AppointmenBooked(),
      },
    );
  }
}

// login component 