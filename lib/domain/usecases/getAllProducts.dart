import 'package:dartz/dartz.dart';
import 'package:staples/core/failures.dart';
import 'package:staples/core/usecase/usecase.dart';
import 'package:staples/domain/entities/product.dart';
import 'package:staples/domain/repositories/productRepository.dart';

class GetAllProducts extends UseCase<List<Product>, NoParams> {
  final ProductRepository repository;

  GetAllProducts(this.repository);

  @override
  Future<Either<Failure, List<Product>>> call(NoParams params) async {
    return await repository.getAllProducts();
  }
}
