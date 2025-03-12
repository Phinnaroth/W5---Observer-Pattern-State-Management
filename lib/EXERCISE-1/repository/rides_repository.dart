
import 'package:w5/EXERCISE-1/model/ride/ride.dart';
import 'package:w5/EXERCISE-1/model/ride_pref/ride_pref.dart';
import 'package:w5/EXERCISE-1/service/rides_service.dart';

abstract class RidesRepository {
  List<Ride> getRides (RidePreference preference, RidesFilter? filter);
}