import 'package:flutter/material.dart';
import 'package:northern_hevean/views/screens/destinationDescription.dart';
import 'package:northern_hevean/views/screens/detailScreen.dart';
import 'package:northern_hevean/views/screens/hotelDescription.dart';
import 'package:northern_hevean/views/screens/loginScreen.dart';
import 'package:northern_hevean/views/screens/passengerScreen.dart';
import 'package:northern_hevean/views/screens/passwordChange.dart';
import 'package:northern_hevean/views/screens/signUp.dart';
import 'package:northern_hevean/views/screens/splashScreen.dart';
import 'package:northern_hevean/views/screens/transportDescription.dart';
import 'package:northern_hevean/views/screens/travelAndRequirements.dart';
import 'views/screens/dashboardScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Northern_Heaven',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const SplashScreen(),
        '/dashboardScreen': (_) => const DashboardScreen(),
        '/loginPage': (_) => const LoginPage(),
        '/signUpPage': (_) => const SignUpPage(),
        '/passengerPage': (_) => const PassengerPage(),
        '/changePasswordScreen': (_) => const ChangePasswordScreen(),
        '/transportDescriptionPage': (_) => const TransportDescriptionPage(),
        '/hotelDescriptionPage': (_) => const HotelDescriptionPage(),
        '/destinationDescriptionPage': (_) =>
            const DestinationDescriptionPage(),
        '/travelAndRequirementsScreen': (_) =>
            const TravelAndRequirementsScreen(),
        '/moreDetailScreen': (_) => const MoreDetailScreen(),
      },
    );
  }
}
