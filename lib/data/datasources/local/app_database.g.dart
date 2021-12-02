// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  ProductDao? _productDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `products_table` (`gtin` INTEGER NOT NULL, `producerIconPath` TEXT NOT NULL, `producerIconAlt` TEXT NOT NULL, `imagePath` TEXT NOT NULL, `imageAlt` TEXT NOT NULL, `name` TEXT NOT NULL, `slogan` TEXT NOT NULL, `qualityIconPath` TEXT NOT NULL, `qualityIconAlt` TEXT NOT NULL, `description` TEXT NOT NULL, `nameDescription` TEXT NOT NULL, `coo` TEXT NOT NULL, `ingredients` TEXT NOT NULL, `ingredientsLegende` TEXT NOT NULL, `legalStatus` TEXT NOT NULL, `peculiarity` TEXT NOT NULL, `storageHint` TEXT NOT NULL, `periodOfUsage` TEXT NOT NULL, `cooVariable` INTEGER NOT NULL, `cooMain` TEXT NOT NULL, `organic` INTEGER NOT NULL, `organicCertification` TEXT NOT NULL, `organicCertificationAddition` TEXT NOT NULL, `organicBody` TEXT NOT NULL, `standard` TEXT NOT NULL, `distributor` TEXT NOT NULL, `additives` TEXT NOT NULL, `vegan` INTEGER NOT NULL, `vegetarian` INTEGER NOT NULL, `unsweetened` INTEGER NOT NULL, `raw` INTEGER NOT NULL, `productKey` TEXT NOT NULL, `allergy` TEXT NOT NULL, `rating` REAL NOT NULL, PRIMARY KEY (`gtin`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  ProductDao get productDao {
    return _productDaoInstance ??= _$ProductDao(database, changeListener);
  }
}

class _$ProductDao extends ProductDao {
  _$ProductDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _productInsertionAdapter = InsertionAdapter(
            database,
            'products_table',
            (Product item) => <String, Object?>{
                  'gtin': item.gtin,
                  'producerIconPath': item.producerIconPath,
                  'producerIconAlt': item.producerIconAlt,
                  'imagePath': item.imagePath,
                  'imageAlt': item.imageAlt,
                  'name': item.name,
                  'slogan': item.slogan,
                  'qualityIconPath': item.qualityIconPath,
                  'qualityIconAlt': item.qualityIconAlt,
                  'description': item.description,
                  'nameDescription': item.nameDescription,
                  'coo': item.coo,
                  'ingredients': item.ingredients,
                  'ingredientsLegende': item.ingredientsLegende,
                  'legalStatus': item.legalStatus,
                  'peculiarity': item.peculiarity,
                  'storageHint': item.storageHint,
                  'periodOfUsage': item.periodOfUsage,
                  'cooVariable': item.cooVariable ? 1 : 0,
                  'cooMain': item.cooMain,
                  'organic': item.organic ? 1 : 0,
                  'organicCertification': item.organicCertification,
                  'organicCertificationAddition':
                      item.organicCertificationAddition,
                  'organicBody': item.organicBody,
                  'standard': item.standard,
                  'distributor': item.distributor,
                  'additives': item.additives,
                  'vegan': item.vegan ? 1 : 0,
                  'vegetarian': item.vegetarian ? 1 : 0,
                  'unsweetened': item.unsweetened ? 1 : 0,
                  'raw': item.raw ? 1 : 0,
                  'productKey': item.productKey,
                  'allergy': item.allergy,
                  'rating': item.rating
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Product> _productInsertionAdapter;

  @override
  Future<List<Product>> getAllProducts() async {
    return _queryAdapter.queryList('SELECT * FROM products_table',
        mapper: (Map<String, Object?> row) => Product(
            gtin: row['gtin'] as int,
            producerIconPath: row['producerIconPath'] as String,
            producerIconAlt: row['producerIconAlt'] as String,
            imagePath: row['imagePath'] as String,
            imageAlt: row['imageAlt'] as String,
            name: row['name'] as String,
            slogan: row['slogan'] as String,
            qualityIconPath: row['qualityIconPath'] as String,
            qualityIconAlt: row['qualityIconAlt'] as String,
            description: row['description'] as String,
            nameDescription: row['nameDescription'] as String,
            coo: row['coo'] as String,
            ingredients: row['ingredients'] as String,
            ingredientsLegende: row['ingredientsLegende'] as String,
            legalStatus: row['legalStatus'] as String,
            peculiarity: row['peculiarity'] as String,
            storageHint: row['storageHint'] as String,
            periodOfUsage: row['periodOfUsage'] as String,
            cooVariable: (row['cooVariable'] as int) != 0,
            cooMain: row['cooMain'] as String,
            organic: (row['organic'] as int) != 0,
            organicCertification: row['organicCertification'] as String,
            organicCertificationAddition:
                row['organicCertificationAddition'] as String,
            organicBody: row['organicBody'] as String,
            standard: row['standard'] as String,
            distributor: row['distributor'] as String,
            additives: row['additives'] as String,
            vegan: (row['vegan'] as int) != 0,
            vegetarian: (row['vegetarian'] as int) != 0,
            unsweetened: (row['unsweetened'] as int) != 0,
            raw: (row['raw'] as int) != 0,
            productKey: row['productKey'] as String,
            allergy: row['allergy'] as String,
            rating: row['rating'] as double));
  }

  @override
  Future<Product?> getProduct(int gtin) async {
    return _queryAdapter.query('SELECT * FROM products_table WHERE gtin = ?1',
        mapper: (Map<String, Object?> row) => Product(
            gtin: row['gtin'] as int,
            producerIconPath: row['producerIconPath'] as String,
            producerIconAlt: row['producerIconAlt'] as String,
            imagePath: row['imagePath'] as String,
            imageAlt: row['imageAlt'] as String,
            name: row['name'] as String,
            slogan: row['slogan'] as String,
            qualityIconPath: row['qualityIconPath'] as String,
            qualityIconAlt: row['qualityIconAlt'] as String,
            description: row['description'] as String,
            nameDescription: row['nameDescription'] as String,
            coo: row['coo'] as String,
            ingredients: row['ingredients'] as String,
            ingredientsLegende: row['ingredientsLegende'] as String,
            legalStatus: row['legalStatus'] as String,
            peculiarity: row['peculiarity'] as String,
            storageHint: row['storageHint'] as String,
            periodOfUsage: row['periodOfUsage'] as String,
            cooVariable: (row['cooVariable'] as int) != 0,
            cooMain: row['cooMain'] as String,
            organic: (row['organic'] as int) != 0,
            organicCertification: row['organicCertification'] as String,
            organicCertificationAddition:
                row['organicCertificationAddition'] as String,
            organicBody: row['organicBody'] as String,
            standard: row['standard'] as String,
            distributor: row['distributor'] as String,
            additives: row['additives'] as String,
            vegan: (row['vegan'] as int) != 0,
            vegetarian: (row['vegetarian'] as int) != 0,
            unsweetened: (row['unsweetened'] as int) != 0,
            raw: (row['raw'] as int) != 0,
            productKey: row['productKey'] as String,
            allergy: row['allergy'] as String,
            rating: row['rating'] as double),
        arguments: [gtin]);
  }

  @override
  Future<void> insertProduct(Product product) async {
    await _productInsertionAdapter.insert(product, OnConflictStrategy.replace);
  }
}

// ignore_for_file: unused_element
final _productTypeConverter = ProductTypeConverter();
