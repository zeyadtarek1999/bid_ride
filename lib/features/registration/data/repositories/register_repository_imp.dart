import 'package:bid_ride/core/error/exceptions.dart';
import 'package:bid_ride/core/error/failures.dart';
import 'package:bid_ride/features/registration/data/data_sources/register_local_data_source.dart';
import 'package:bid_ride/features/registration/domain/entities/register_entity.dart';
import 'package:bid_ride/features/registration/domain/repositories/register_repository.dart';
import 'package:dartz/dartz.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  final SignUpLocalDataSource localDataSource;

  SignUpRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, void>> saveUser(User user) async {
    try {
      await localDataSource.saveUser(user);
      return const Right(null);
    } on CacheException catch (e) {
      return Left(CacheFailure('Failed to save user: ${e.message}'));
    } catch (e) {
      return Left(CacheFailure('An unknown error occurred while saving user: $e'));
    }
  }

  @override
  Future<Either<Failure, User?>> getUser(String email) async {
    try {
      final user = await localDataSource.getUser(email);
      return Right(user);
    } on CacheException catch (e) {
      return Left(CacheFailure('Failed to retrieve user: ${e.message}'));
    } catch (e) {
      return Left(CacheFailure('An unknown error occurred while retrieving user: $e'));
    }
  }

  @override
  Future<Either<Failure, bool>> isEmailRegistered(String email) async {
    try {
      final user = await localDataSource.getUser(email);
      if (user != null) {
        return const Right(true);
      } else {
        return const Right(false);
      }
    } on CacheException catch (e) {
      return Left(CacheFailure('Failed to check email: ${e.message}'));
    } catch (e) {
      return Left(CacheFailure('An unknown error occurred while checking email: $e'));
    }
  }
}