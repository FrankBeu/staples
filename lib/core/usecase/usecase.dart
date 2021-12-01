import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:staples/core/failures.dart';

/// ensure every usecase is callable
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

/// if Equatable wasn't used, Params could just be a void...
class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
