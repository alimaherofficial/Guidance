// ignore_for_file: camel_case_types

abstract class AppStates {}

class AppInitialState extends AppStates {}

class AppBottomNavState extends AppStates {}

class AppCustomTileExpandedState extends AppStates {}

class AppserviceEnabled1State extends AppStates {}

class ApppermissionGranted1State extends AppStates {}

class getdatasuccessState extends AppStates {}

class getdataloadingState extends AppStates {}

class getdataerorrState extends AppStates {
  final String error;
  getdataerorrState(this.error);
}
