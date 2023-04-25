part of 'cart_bloc.dart';

@immutable
abstract class CartState {}

abstract class CartActionState extends CartState {}

class CartInitial extends CartState {}
class SuccessState extends CartState {
  final List<ProductDataModel> products;
  SuccessState({
    required this.products,
  });
}
