import 'package:flutter/material.dart';
import 'model/ride_pref/ride_pref.dart';
import 'repository/mock/mock_locations_repository.dart';
import 'repository/mock/mock_ride_preferences_repository.dart';
import 'repository/mock/mock_rides_repository.dart';
import 'screens/ride_pref/ride_pref_screen.dart';
import 'service/locations_service.dart';
import 'service/observer/ride_pref_listener.dart';
import 'service/ride_prefs_service.dart';
import 'service/rides_service.dart';
import 'theme/theme.dart';

class ConsoleLogger implements RidePreferenceListener {
  @override
  void onPreferenceSelected(RidePreference selectedPreference) {
    print("🚗 Ride preference changed to: $selectedPreference");
  }
}
void main() {
   
  // 1 - Initialize the services
  RidePrefService.initialize(MockRidePreferencesRepository());
  LocationsService.initialize(MockLocationsRepository());
  RidesService.initialize(MockRidesRepository());


  // 1.1 - Add a console logger
  final ridePrefService = RidePrefService.instance;

  final consoleLogger = ConsoleLogger();
  // register the listener
  ridePrefService.addListener(consoleLogger);

  print("ConsoleLogger test completed successfully.");

  // 2- Run the UI
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const Scaffold(body: RidePrefScreen()),
    );
  }
}
