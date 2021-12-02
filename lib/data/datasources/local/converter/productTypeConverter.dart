import 'package:floor/floor.dart';
import 'package:staples/domain/entities/product.dart';

class ProductTypeConverter extends TypeConverter<Product, String> {
  @override
  Product decode(String databaseValue) {
    final List<String> results = databaseValue.split(',');
    return Product(gtin: int.parse(results.first));
  }

  @override
  String encode(Product value) {
    final String result = '${value.gtin}';
    return result;
  }
}
