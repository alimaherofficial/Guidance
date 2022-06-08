import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guidance/cubit/app_cubit/cubit.dart';
import 'package:guidance/cubit/app_cubit/stastes.dart';
import 'package:guidance/cubit/bloc_observer.dart';
import 'package:guidance/cubit/menu/menu_cubit.dart';
import 'package:guidance/cubit/menu/menu_states.dart';
import 'package:guidance/cubit/menu_price/cubit.dart';
import 'package:guidance/cubit/menu_price/stastes.dart';
import 'package:guidance/modules/verification_screen/verification_screen.dart';
import 'package:guidance/modules/welcome_screen/welcome_screen.dart';
import 'package:guidance/styles/colors/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit(),
        ),
        BlocProvider(
          create: (context) => MenuCubit(),
        ),
        BlocProvider(
          create: (context) => MenuPriceCubit(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AppCubit, AppStates>(
            listener: (context, state) {},
          ),
          BlocListener<MenuCubit, MenuStates>(
            listener: (context, state) {},
          ),
          BlocListener<MenuPriceCubit, MenuPriceStates>(
            listener: (context, state) {},
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: appColor,
            scaffoldBackgroundColor: Colors.white,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: const VerificationScreen(),
        ),
      ),
    );
  }
}
