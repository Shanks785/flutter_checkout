part of 'starting_bloc.dart';

@immutable
abstract class StartingEvent {}

class InitialEvent extends StartingEvent {}

class WishlistBtnEvent extends StartingEvent {}

class ProductCartBtnEvent extends StartingEvent {}

class WishlistNavigationEvent extends StartingEvent {}

class CartNavigationEvent extends StartingEvent {}
