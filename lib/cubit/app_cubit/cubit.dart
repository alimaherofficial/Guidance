import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guidance/cubit/app_cubit/stastes.dart';
import 'package:guidance/modules/ask_questions/ask_questions.dart';
import 'package:guidance/modules/home_screen/home_screen.dart';
import 'package:guidance/modules/questions_screen/questions_screen.dart';
import 'package:guidance/modules/web_view_screen/web_view_screen.dart';

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

  bool customTileExpanded1 = false;
  void changeCustomTileExpanded1(bool value) {
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

  onTapLink(String? url) {
    TextButton(
        onPressed: () {
          WebViewScreen(url: url);
        },
        child: Text(url!));
  }
}
