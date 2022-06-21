// ignore_for_file: avoid_print


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guidance/cubit/app_cubit/stastes.dart';
import 'package:guidance/models/model.dart';
import 'package:guidance/modules/ask_questions/ask_questions.dart';
import 'package:guidance/modules/home_screen/home_screen.dart';
import 'package:guidance/modules/questions_screen/questions_screen.dart';
import 'package:guidance/modules/web_view_screen/web_view_screen.dart';
import 'package:location/location.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  int currentindex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.question_mark_sharp),
      label: 'Askq Qestions',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.question_answer),
      label: 'Questions',
    ),
  ];

  List<Widget> screens = [
    const HomeScreen(),
    const AskqQestions(),
    const QuestionsScreen(),
  ];

  void changeBotoomNavBar(int index) {
    currentindex = index;
    emit(AppBottomNavState());
  }

  List<bool> ahmed = [false, false, false, false, false, false];

  List<Function> changeCustomTileExpanded = [];

  bool customTileExpanded1 = false;
  changeCustomTileExpanded1(bool value) {
    customTileExpanded1 = value;
    emit(AppCustomTileExpandedState());
  }

  bool customTileExpanded2 = false;
  void changeCustomTileExpanded2(bool value) {
    customTileExpanded2 = value;
    emit(AppCustomTileExpandedState());
  }

  bool customTileExpanded3 = false;
  void changeCustomTileExpanded3(bool value) {
    customTileExpanded3 = value;
    emit(AppCustomTileExpandedState());
  }

  bool customTileExpanded4 = false;
  void changeCustomTileExpanded4(bool value) {
    customTileExpanded4 = value;
    emit(AppCustomTileExpandedState());
  }

  bool customTileExpanded5 = false;
  void changeCustomTileExpanded5(bool value) {
    customTileExpanded5 = value;
    emit(AppCustomTileExpandedState());
  }

  bool customTileExpanded6 = false;
  void changeCustomTileExpanded6(bool value) {
    customTileExpanded6 = value;
    emit(AppCustomTileExpandedState());
  }

  onTapLink(String? url) {
    TextButton(
        onPressed: () {
          WebViewScreen(url: url);
        },
        child: Text(url!));
  }

  Location? location = Location();

  bool? serviceEnabled;
  PermissionStatus? permissionGranted;
  LocationData? locationData;

  void serviceEnabled1() async {
    serviceEnabled = await location!.serviceEnabled();
    if (!serviceEnabled!) {
      emit(AppserviceEnabled1State());
      serviceEnabled = await location!.requestService();
      if (!serviceEnabled!) {
        emit(AppserviceEnabled1State());
        return;
      }
    }
  }

  void permissionGranted1() async {
    permissionGranted = await location!.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      emit(ApppermissionGranted1State());
      permissionGranted = await location!.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        emit(ApppermissionGranted1State());
        return;
      }
    }
  }

  void getLocation() async {
    locationData = await location!.getLocation();
  }

// locationData = await location.getLocation();
  List<Model> model=[] ;

  void getData() {
    emit(getdataloadingState());
    FirebaseFirestore.instance.collection('guidance').get().then(
      (value) {
        // ignore: avoid_function_literals_in_foreach_calls
        value.docs.forEach(
          (element) {
            model.add(Model.fromJson(element.data()));
          },
        );
        emit(getdatasuccessState());
        print(model[0].title);
      },
    ).catchError(
      (error) {
        emit(getdataerorrState(error.toString()));
        print(error.toString());
      },
    );
  }
}
