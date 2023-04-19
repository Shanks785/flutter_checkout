import 'dart:async';

import 'package:basic/new_structure/models/product_data.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/grocery_data.dart';

part 'starting_event.dart';
part 'starting_state.dart';

class StartingBloc extends Bloc<StartingEvent, StartingState> {
  StartingBloc() : super(StartingInitial()) {
    on<InitialEvent>(initialEvent);
    on<WishlistBtnEvent>(wishlistBtnEvent);
    on<ProductCartBtnEvent>(productCartBtnEvent);
    on<WishlistNavigationEvent>(wishlistNavigationEvent);
    on<CartNavigationEvent>(cartNavigationEvent);
  }

  FutureOr<void> initialEvent(
      InitialEvent event, Emitter<StartingState> emit) async {
    print('Initial Event');
    emit(LoadingState());
    await Future.delayed(Duration(seconds: 2));
    emit(LoadedSuccessState(
        products: GroceryData.groceryProducts.map((e) => ProductDataModel(
              id: e['id'],
              name: e['name'],
              description: e['unit'],
              price: e['price'],
              imageUrl: e['image'],
            )).toList()));
  }

  FutureOr<void> wishlistBtnEvent(
      WishlistBtnEvent event, Emitter<StartingState> emit) async {
    print('Wishlist Button Clicked');
    // emit(NavigateToWishlistActionState());
  }

  FutureOr<void> productCartBtnEvent(
      ProductCartBtnEvent event, Emitter<StartingState> emit) {
    print('Cart Button Clicked');
    // emit(NavigateToCartActionState());
  }

  FutureOr<void> wishlistNavigationEvent(
      WishlistNavigationEvent event, Emitter<StartingState> emit) {
    print('Wishlist Navigation Clicked');
    emit(NavigateToWishlistActionState());
  }

  FutureOr<void> cartNavigationEvent(
      CartNavigationEvent event, Emitter<StartingState> emit) {
    print('Cart Navigation Clicked');
    emit(NavigateToCartActionState());
  }
}
