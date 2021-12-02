import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staples/config/constants.dart';
import 'package:staples/injectionContainer.dart';
import 'package:staples/presentation/bloc/bloc.dart';
import 'package:staples/presentation/widgets/widgets.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appName),
      ),
      body: SingleChildScrollView(
        child: buildBody(context),
      ),
    );
  }

  BlocProvider<ProductBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ProductBloc>(),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              // Top half
              BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  if (state is Empty) {
                    return MessageDisplay(
                      message: '',
                    );
                  } else if (state is Loading) {
                    return LoadingWidget();
                  } else if (state is Loaded) {
                    // return ProductDisplay(product: state.products[0]);
                    print(state.products);
                    return ProductDisplay(product: state.products.last);
                  } else {
                    print('You have to provide a GTIN with 13 digits');
                    return MessageDisplay(
                        message: 'You have to provide a GTIN with 13 digits');
                  }
                },
              ),
              SizedBox(height: 20),
              // Bottom half
              ProductControls()
            ],
          ),
        ),
      ),
    );
  }
}
