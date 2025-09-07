part of 'my_home_cubit.dart';

@immutable
sealed class MyHomeState {}

final class MyHomeInitial extends MyHomeState {}
final class changeUI extends MyHomeState {}
