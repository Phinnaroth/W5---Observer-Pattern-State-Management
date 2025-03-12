import 'package:w5/EXERCISE-1/model/ride/ride.dart';
import 'package:w5/EXERCISE-1/model/ride_pref/ride_pref.dart';
import 'package:w5/EXERCISE-1/repository/rides_repository.dart';
import 'package:w5/EXERCISE-1/service/rides_service.dart';

class MockRidesRepository extends RidesRepository {
  final List<Ride> _rides = [];

  @override
  List<Ride> getRides(RidePreference preference, RidesFilter? filter) {
    return _rides;
  }
}