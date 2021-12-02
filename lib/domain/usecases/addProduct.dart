import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:staples/core/error/failures.dart';
import 'package:staples/core/usecase/usecase.dart';
import 'package:staples/domain/entities/product.dart';
import 'package:staples/domain/repositories/productRepository.dart';

class AddProduct extends UseCase<List<Product>, Params> {
  final ProductRepository repository;

  AddProduct(this.repository);

  @override
  Future<Either<Failure, List<Product>>> call(Params params) async {
    // return await repository.addProduct(params.product);
    return await repository.addProduct(params.gtin);
  }
}

// class Params extends Equatable {
//   final Product product;

//   Params({required this.product});

//   @override
//   List<Object> get props => [product];
// }

class Params extends Equatable {
  final int gtin;

  Params({required this.gtin});

  @override
  List<Object> get props => [gtin];
}
