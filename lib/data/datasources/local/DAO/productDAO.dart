import 'package:floor/floor.dart';
import 'package:staples/config/constants.dart';
import 'package:staples/domain/entities/product.dart';

@dao
abstract class ProductDao {
  @Query('SELECT * FROM $productTableName')
  Future<List<Product>> getAllProducts();

  @Query('SELECT * FROM $productTableName WHERE gtin = :gtin')
  // Future<Product?> getProduct(int gtin);
  Future<Product?> getProduct(int gtin);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertProduct(Product product);

  // TODO
  // @delete
  // Future<void> deleteProduct(ProductModel product);
}
