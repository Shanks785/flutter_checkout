part of 'starting_bloc.dart';

@immutable
abstract class StartingState {}

abstract class StartingActionState extends StartingState {}

class StartingInitial extends StartingState {}


class LoadingState extends StartingState {}

class LoadedSuccessState extends StartingState {
  final List<ProductDataModel> products;
  LoadedSuccessState({
    required this.products,
  });
}

class ErrorState extends StartingState {}


class NavigateToWishlistActionState extends StartingActionState {}

class NavigateToCartActionState extends StartingActionState {}


// When item is added to wishlist, we want to show a snackbar
class WishlistedActionState extends StartingActionState {}
// When item is added to cart, we want to show a snackbar
class AddToCartActionState extends StartingActionState {}
