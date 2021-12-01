import 'package:dartz/dartz.dart';
import 'package:staples/core/failures.dart';
import 'package:staples/domain/entities/product.dart';

abstract class ProductRepository {
  Future<Either<Failure, Product>> getProduct(int ean);
  Future<Either<Failure, List<Product>>> getAllProducts();
  Future<Either<Failure, Product>> addProduct(int ean);
}
