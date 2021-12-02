import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

// TODO remove
class ServerFailure extends Failure {}

// TODO remove
class CacheFailure extends Failure {}

class DbFailure extends Failure {}

class ProductNotFoundFailure extends Failure {}

class InvalidInputFailure extends Failure {}
