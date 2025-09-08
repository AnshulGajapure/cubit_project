import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_home_state.dart';

class MyHomeCubit extends Cubit<MyHomeState> {
  String hi = "Hello";
  double count = 1;
  MyHomeCubit() : super(MyHomeInitial());
  onTap(String? text) {
    if (text == "hi" && hi != "Hi from Tap!") {
      count++;
      emit(changeUI());
    } else if (text != "hi" && hi != "wrong") {
      hi = "wrong";
      emit(changeUI());
    }



  }

  void onLongPress() {
    hi = "Hi from Long Press!";
    emit(changeUI());
  }
}
