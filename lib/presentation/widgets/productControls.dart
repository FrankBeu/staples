import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staples/presentation/bloc/bloc.dart';

class ProductControls extends StatefulWidget {
  const ProductControls({
    Key? key,
  }) : super(key: key);

  @override
  _ProductControlsState createState() => _ProductControlsState();
}

class _ProductControlsState extends State<ProductControls> {
  final controller = TextEditingController();
  String inputStr = '';

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Column(
      children: <Widget>[
        TextField(
          key: Key('gtinInput'),
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter a GTIN',
          ),
          onChanged: (value) {
            inputStr = value;
          },
          onSubmitted: (_) {
            dispatchProduct();
          },
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              // child: RaisedButton(
              child: ElevatedButton(
                child: Text('Add Product'),
                // color: Theme.of(context).accentColor,
                // textTheme: ButtonTextTheme.primary,
                style: style,
                onPressed: dispatchProduct,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                child: Text('Scan EAN'),
                style: style,
                onPressed: dispatchFetchProducts,
              ),
            ),
          ],
        )
      ],
    );
  }

  void dispatchProduct() {
    controller.clear();
    BlocProvider.of<ProductBloc>(context).add(ProductAdded(inputStr));
  }

  void dispatchFetchProducts() {
    controller.clear();
    BlocProvider.of<ProductBloc>(context).add(AllProductsRetrieved());
  }
}
