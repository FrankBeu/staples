import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ProductEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ProductAdded extends ProductEvent {
  final String gtinString;

  ProductAdded(this.gtinString);

  @override
  List<Object> get props => [gtinString];
}

class AllProductsRetrieved extends ProductEvent {}
