import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:staples/core/usecase/usecase.dart';
import 'package:staples/domain/entities/product.dart';
import 'package:staples/domain/repositories/productRepository.dart';
import 'package:staples/domain/usecases/getAllProducts.dart';

import 'getAllProducts_test.mocks.dart';

// @Tags(['unit', 'product'])
// @Tags(['unit'])
@GenerateMocks([ProductRepository])
void main() {
  late GetAllProducts usecase;
  late MockProductRepository mockProductRepository;

  setUp(() {
    mockProductRepository = MockProductRepository();
    usecase = GetAllProducts(mockProductRepository);
  });

  final tGTIN_1 = 8711812414870;
  final tGTIN_2 = 8711812414597;
  final List<Product> tProductList = [
    Product(gtin: tGTIN_1),
    Product(gtin: tGTIN_2)
  ];

  test('should get the product with the given GTIN from the repository',
      () async {
    when(mockProductRepository.getAllProducts())
        .thenAnswer((_) async => Right(tProductList));

    // act
    final result = await usecase(NoParams());

    // assert
    expect(result, Right(tProductList));
    verify(mockProductRepository.getAllProducts());
    verifyNoMoreInteractions(mockProductRepository);
    // },
    // }, tags: 'unit'); // working
  }, tags: ['unit', 'product']);
}
