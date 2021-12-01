import 'package:flutter_test/flutter_test.dart';
import 'package:staples/data/models/productModel.dart';
import 'package:staples/domain/entities/product.dart';

void main() {
  final tProductModel = ProductModel(gtin: 8711812414870);

  test('should be a subclass of the Product-Entity', () async {
    // arrange

    // act

    // assert
    expect(tProductModel, isA<Product>());
  }, tags: ['unit', 'product']);
}
