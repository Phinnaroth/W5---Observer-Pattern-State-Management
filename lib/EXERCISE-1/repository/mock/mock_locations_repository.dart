
import 'package:w5/EXERCISE-1/dummy_data/dummy_data.dart';
import 'package:w5/EXERCISE-1/model/ride/locations.dart';
import 'package:w5/EXERCISE-1/repository/locations_repository.dart';

class MockLocationsRepository extends LocationsRepository {
  final List<Location> _locations = fakeLocations;

  
  @override
  List<Location> getLocations() {
    return _locations;
  }
}