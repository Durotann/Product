// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_screen_bloc.dart';

@immutable
sealed class HomeScreenEvent {}

class ProductLoad extends HomeScreenEvent {
  final String arg1;
  final String arg2;
  ProductLoad({
    this.arg1 = "",
    this.arg2 = "",
  });
}

class AtributeLoad extends HomeScreenEvent {}
