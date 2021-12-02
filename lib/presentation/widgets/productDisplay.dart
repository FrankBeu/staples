import 'package:flutter/material.dart';
import 'package:staples/domain/entities/product.dart';

class ProductDisplay extends StatelessWidget {
  final Product product;

  const ProductDisplay({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Column(
        children: <Widget>[
          Text(
            product.gtin.toString(),
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Text(
                  '',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
