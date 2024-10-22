import 'package:bid_ride/core/error/failures.dart';
import 'package:bid_ride/features/registration/domain/entities/register_entity.dart';
import 'package:bid_ride/features/registration/domain/repositories/register_repository.dart';
import 'package:dartz/dartz.dart';


class GetUserInfoUseCase {
  final SignUpRepository userRepository;

  GetUserInfoUseCase(this.userRepository);

  Future<Either<Failure, User?>> getUserInfo(String email) async {
    return await userRepository.getUser(email);
  }


}