import 'package:flutter_bloc/flutter_bloc.dart';

part 'layout_cubit_state.dart';

class LayoutCubit extends Cubit<LayoutCubitState> {
  LayoutCubit() : super(LayoutCubitInitial());
  static LayoutCubit get(
    context,
  ) =>
      BlocProvider.of(context);
  int currentIndex = 0;
  void changeBottomNavIndex(int index) {
    currentIndex = index;
    emit(ChangeBottomNavIndexState());
  }

  List<String> titles = ["الرئيسية", "محفظتك", "نوته", "الاشعارات", "المزيد"];
}
