part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class CartInitialEvent extends CartEvent {}

class RemoveItemEvent extends CartEvent {
  final ProductDataModel removeProduct;
  RemoveItemEvent({
    required this.removeProduct,
  });
}