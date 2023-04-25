part of 'starting_bloc.dart';

@immutable
abstract class StartingEvent {}

class InitialEvent extends StartingEvent {}

class WishlistBtnEvent extends StartingEvent {
  final ProductDataModel addProduct;
  WishlistBtnEvent({
    required this.addProduct,
  });
}

class ProductCartBtnEvent extends StartingEvent {
  final ProductDataModel addProduct;
  ProductCartBtnEvent({
    required this.addProduct,
  });
}

class WishlistNavigationEvent extends StartingEvent {}

class CartNavigationEvent extends StartingEvent {}
