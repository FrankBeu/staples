import 'package:dartz/dartz.dart';
import 'package:staples/core/error/exceptions.dart';
import 'package:staples/core/error/failures.dart';
import 'package:staples/data/datasources/local/app_database.dart';
import 'package:staples/domain/repositories/productRepository.dart' as domain;
import 'package:staples/domain/entities/product.dart';

class ProductRepository implements domain.ProductRepository {
  final AppDatabase _appDatabase;

  const ProductRepository(this._appDatabase);

  // TODO
  // @override
  // Future<Either<Failure, Product>> getProduct(int gtin) async {
  //   return _appDatabase.productDao.getProduct(gtin);
  // }

  @override
  Future<Either<Failure, List<Product>>> getAllProducts() async {
    try {
      final allProducts = await _appDatabase.productDao.getAllProducts();
      return Right(allProducts);
    } on DbException {
      return Left(DbFailure());
    }
  }

  @override
  Future<Either<Failure, List<Product>>> addProduct(int gtin) async {
    try {
      _appDatabase.productDao.insertProduct(Product(gtin: gtin));
      final addedProduct = await _appDatabase.productDao.getProduct(gtin);

      if (addedProduct != null) {
        return Right([addedProduct]);
      } else {
        return Left(ProductNotFoundFailure());
      }
    } on DbException {
      return Left(DbFailure());
    }
  }
}
