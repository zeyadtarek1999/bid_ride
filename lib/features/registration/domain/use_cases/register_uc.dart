import 'package:bid_ride/core/error/failures.dart';
import 'package:bid_ride/features/registration/domain/entities/register_entity.dart';
import 'package:bid_ride/features/registration/domain/repositories/register_repository.dart';
import 'package:dartz/dartz.dart';

abstract class SignUpUseCase {
  Future<Either<Failure, void>> signUp(User user);
}

class SignUpUseCaseImpl implements SignUpUseCase {
  final SignUpRepository userRepository;

  SignUpUseCaseImpl(this.userRepository);

  @override
  Future<Either<Failure, void>> signUp(User user) async {
    return await userRepository.saveUser(user);
  }
}