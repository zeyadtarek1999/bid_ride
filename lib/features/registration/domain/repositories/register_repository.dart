import 'package:bid_ride/core/error/failures.dart';
import 'package:bid_ride/features/registration/domain/entities/register_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SignUpRepository {
  Future<Either<Failure, void>> saveUser(User user);
  Future<Either<Failure, User?>> getUser(String email);
  Future<Either<Failure, bool>> isEmailRegistered(String email);
}