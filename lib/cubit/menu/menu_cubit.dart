import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guidance/cubit/menu/menu_states.dart';


class MenuCubit extends Cubit<MenuStates> {
  MenuCubit() : super(MenuInitialState());
  static MenuCubit get(context) => BlocProvider.of(context);

  String? a;
  void change(String? a) {
    this.a = a;
    emit(MenuChangeState());
  }

  // void ali(context) {
  //   emit(MenuChangeState2());
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => a == 'RestaurantsMenu'
  //           ? const RestaurantsMenu()
  //           : const StarbucksMenu(),
  //     ),
  //   );
  
  // }
}
