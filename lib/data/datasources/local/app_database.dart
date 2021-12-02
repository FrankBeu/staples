import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:staples/data/datasources/local/DAO/productDAO.dart';
import 'package:staples/domain/entities/product.dart';

import 'converter/productTypeConverter.dart';

part 'app_database.g.dart';

@TypeConverters([ProductTypeConverter])
@Database(version: 1, entities: [Product])
abstract class AppDatabase extends FloorDatabase {
  ProductDao get productDao;
}
