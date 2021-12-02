import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:staples/core/error/failures.dart';
import 'package:staples/core/usecase/usecase.dart';
import 'package:staples/core/util/inputConverter.dart';
import 'package:staples/domain/entities/product.dart';
import 'package:staples/domain/usecases/addProduct.dart';
import 'package:staples/domain/usecases/getAllProducts.dart';

import './bloc.dart';

const String DB_FAILURE_MESSAGE = 'DB Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid Input - The number must be a positive integer or zero.';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetAllProducts getAllProducts;
  final AddProduct addProduct;
  final InputConverter inputConverter;

  ProductBloc({
    required this.getAllProducts,
    required this.addProduct,
    required this.inputConverter,
  });

  @override
  ProductState get initialState => Empty();

  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
  ) async* {
    if (event is ProductAdded) {
      final inputEither =
          inputConverter.stringToUnsignedInteger(event.gtinString);

      yield* inputEither.fold(
        (failure) async* {
          yield Error(message: INVALID_INPUT_FAILURE_MESSAGE);
        },
        (integer) async* {
          yield Loading();
          final failureOrProducts = await addProduct(Params(gtin: integer));
          yield* _eitherLoadedOrErrorState(failureOrProducts);
        },
      );
    } else if (event is AllProductsRetrieved) {
      yield Loading();
      final failureOrProducts = await getAllProducts(NoParams());
      yield* _eitherLoadedOrErrorState(failureOrProducts);
    }
  }

  Stream<ProductState> _eitherLoadedOrErrorState(
    Either<Failure, List<Product>> failureOrProducts,
  ) async* {
    yield failureOrProducts.fold(
      (failure) => Error(message: _mapFailureToMessage(failure)),
      (product) => Loaded(products: product),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case DbFailure:
        return DB_FAILURE_MESSAGE;
      default:
        return 'Unexpected error';
    }
  }
}
