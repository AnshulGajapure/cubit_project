import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_home_state.dart';

class MyHomeCubit extends Cubit<MyHomeState> {
  String hi = "Hello";
  MyHomeCubit() : super(MyHomeInitial());
  void onTap() {
    hi = "Hi from Tap!";
    emit(changeUI());
  }

  void onLongPress() {
    hi = "Hi from Long Press!";
    emit(changeUI());
  }
}
