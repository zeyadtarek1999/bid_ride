import 'package:dartz/dartz.dart';
import 'package:bid_ride/core/error/failures.dart';
import 'package:bid_ride/core/usecases/usecase.dart';
import 'package:bid_ride/features/first_feature/domain/entities/cat_fact_entity.dart';
import 'package:bid_ride/features/first_feature/domain/repositories/first_feature_repo.dart';

class FirstFeatureUc implements UseCase<CatFactEntity, NoParams> {
  final FirstFeatureRepository firstFeatureRepository;

  FirstFeatureUc({required this.firstFeatureRepository});

  @override
  Future<Either<Failure, CatFactEntity>> call(NoParams params) {
    return firstFeatureRepository.getCatFact();
  }
}
