import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_home_state.dart';

class MyHomeCubit extends Cubit<MyHomeState> {
  MyHomeCubit() : super(MyHomeInitial());
  String hi = "anshul";
  void onTap(){
    hi = "i love you";
    emit(changeUI());
  }
  void onLongPress(){
    hi = "i love you Anshul";
    emit(changeUI());
  }
}
