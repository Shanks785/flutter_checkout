import 'package:basic/cart/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/cart_tile.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final CartBloc cartBloc = CartBloc();

  @override
  initState() {
    cartBloc.add(CartInitialEvent());
    super.initState();
  }

  // final List<String> items;

  // CartWidget({required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Items"),
      ),
      body: BlocConsumer<CartBloc, CartState>(
        bloc: cartBloc,
        listenWhen: (previous, current) => current is CartActionState,
        buildWhen: (previous, current) => current is! CartActionState,
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          switch (state.runtimeType) {
            case SuccessState:
              final successState = state as SuccessState;
              return ListView.builder(
                itemCount: successState.products.length,
                itemBuilder: (context, index) {
                  return CartTile(
                    productDataModel: successState.products[index],
                    cartBloc: cartBloc,
                  );
                },
              );
            default:
              return Center(
                child: Text("Cart is Empty"),
              );
          }
        },
      ),
    );
  }
}
