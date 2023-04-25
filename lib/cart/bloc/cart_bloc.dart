import 'dart:async';

import 'package:basic/data/cart_items.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../new_structure/models/product_data.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<RemoveItemEvent>(removeItemEvent);
  }

  FutureOr<void> cartInitialEvent(
    CartInitialEvent event, Emitter<CartState> emit) {
      print('Cart Initial Event');
      emit(SuccessState(products: cartItems));
    }

  FutureOr<void> removeItemEvent(RemoveItemEvent event, Emitter<CartState> emit) {
    print('Remove Item Event');
    cartItems.remove(event.removeProduct);
    emit(SuccessState(products: cartItems));
  }
}
