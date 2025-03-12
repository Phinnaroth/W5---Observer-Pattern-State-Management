import '../../model/ride_pref/ride_pref.dart';

abstract class RidePreferenceListener {
  void onPreferenceSelected(RidePreference preference);
}