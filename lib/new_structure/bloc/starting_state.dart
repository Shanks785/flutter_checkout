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



