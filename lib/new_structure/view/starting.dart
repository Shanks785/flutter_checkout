import 'package:basic/new_structure/bloc/starting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Starting extends StatefulWidget {
  const Starting({Key? key}) : super(key: key);

  @override
  State<Starting> createState() => _StartingState();
}

class _StartingState extends State<Starting> {
  @override
  initState() {
    startingBloc.add(InitialEvent());
    super.initState();
  }

  final StartingBloc startingBloc = StartingBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StartingBloc, StartingState>(
      //Wrap your widget with BlocConsumer
      bloc: startingBloc,
      listenWhen: (previous, current) => current is StartingActionState,
      buildWhen: (previous, current) => current is! StartingActionState,
      listener: (context, state) {
        if (state is NavigateToWishlistActionState) {
          Navigator.pushNamed(context, "/wishlist");
        } else if (state is NavigateToCartActionState) {
          Navigator.pushNamed(context, "/cart");
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case LoadingState:
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case LoadedSuccessState:
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  "Grocery App",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      startingBloc.add(WishlistNavigationEvent());
                    },
                    icon: Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: () {
                      startingBloc.add(CartNavigationEvent());
                    },
                    icon: Icon(Icons.shopping_cart_checkout_outlined),
                  ),
                ],
              ),
              body: Container(
                child: Text("Starting"),
              ),
            );
          case ErrorState:
            return Scaffold(
              body: Center(
                child: Text("Error"),
              ),
            );
          default:
            return Container(
              child: Text("Default"),
            );
        }
      },
    );
  }
}
